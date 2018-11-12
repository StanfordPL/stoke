#!/usr/bin/env ruby

require 'set'
require 'pg'

@connection = PG.connect( File.open("/afs/cs.stanford.edu/u/berkeley/stoke2/bin/postgres").read )
@data = {}

@blacklist = { :gcc => { "s351" => true }, :llvm => {} }

@debug = false
if ARGV.size > 0 and ARGV[0] == "--debug"
  puts "DEBUG MODE"
  @debug = true
end


def collect_data(compiler1, compiler2, benchmark)
  puts "Collecting data #{compiler1} #{compiler2} #{benchmark}"

  prefix = "#{benchmark}_#{compiler1}_#{compiler2}"
  num = 0

  while File.exist?("traces/#{prefix}.#{num}")
    name = "traces/#{prefix}.#{num}"
    num = num+1
  end

  if name.nil?
    puts "File not found!"
    return
  else
    puts "Found #{name}"
  end

  total_search_time = nil
  first_search_time = nil
  attempted_predicates = 0
  tested_ok_predicates = 0
  smt_cpu_time = 0
  dispatched = Set.new

  File.open(name).each do |line|
    line = line.strip

    # STEP 1: get total time for search
    if m = /TOTAL SEARCH TIME (\d+)/.match(line) then
      total_search_time = (m[1].to_f/(1000*1000*60)).round(1) #microseconds to minutes
    end

    # STEP 2: get time for first search
    if m = /SEARCH TOOK (\d+)/.match(line) and first_search_time.nil? then
      first_search_time = (m[1].to_f/(1000*1000*60)).round(1) #microseconds to minutes
    end

    # STEP 3: count attempted alignment predicates
    if /expression/.match(line) then
      attempted_predicates = attempted_predicates + 1
    end

    # STEP 4: count alignment predicates where PAA built successfully
    if /benchmark.*Looks like we found something/.match(line) or /benchmark.*No need to check/.match(line)
      tested_ok_predicates = tested_ok_predicates + 1
    end

    # STEP 5: count CPU time for SMT queries
    if m = /Dispatching hash ([0-9a-f]+)/.match(line)
      hash = m[1]
      if not dispatched.include?(hash) then
        dispatched.add(hash);
      end
    end
  end

  # microseconds to minutes
  if dispatched.size > 0 then
    smt_cpu_time = (get_runtime(dispatched).to_f/(1000*1000*60)).round(2)
  else
    smt_cpu_time = 0
  end

  puts "       total search time (minutes): #{total_search_time}"
  puts "       first search time (minutes): #{first_search_time}"
  puts "       attemted predicates:         #{attempted_predicates}"
  puts "       PAAs that passed tests:      #{tested_ok_predicates}"
  puts "       Percentage PAAs that passed: #{(100*tested_ok_predicates.to_f/attempted_predicates.to_f).round(2)}"
  puts "       SMT solver time (minutes):   #{smt_cpu_time}"

  @data[benchmark][compiler1][compiler2] = {
    :total_search_time_mins => total_search_time,
    :first_search_time_mins => first_search_time,
    :attempted_predicates => attempted_predicates,
    :tested_ok_predicates => tested_ok_predicates,
    :smt_solver_time_mins => smt_cpu_time
  }
end

def output_data(benchmarks)
  filename = "data.out"
  if @debug
    filename = "data.debug"
  end

  cpu_times = {}

  File.open(filename, 'w') do |file|
    file.write("benchmark total_search_min first_search_min attempted_preds tested_preds smt_time\n")
    @data.each do |benchmark,m2|
      m2.each do |compiler1,m3|
        m3.each do |compiler2,m4| 
          cpu_times["#{benchmark}-#{compiler2}"] = m4[:smt_solver_time_mins]
          file.write("#{benchmark}-#{compiler2} #{m4[:total_search_time_mins]} #{m4[:first_search_time_mins]} #{m4[:attempted_predicates]} #{m4[:tested_ok_predicates]} #{m4[:smt_solver_time_mins]}\n")
        end
      end
    end
  end

  min = nil
  min_bench = nil
  max = nil
  max_bench = nil
  values = []
  cpu_times.each do |k,v|
    if min.nil? or v < min then
      min = v
      min_bench = k
    end
    if max.nil? or v > max then
      max = v
      max_bench = k
    end
    values.push(v)
  end
  values.sort!
  if values.size % 2 == 0 then
    puts "Median #{(values[values.size/2] + values[values.size/2-1])/120}"
  else
    puts "Median #{values[values.size/2]/60}"
  end
  puts "Min #{min_bench} #{min/60}"
  puts "Max #{max_bench} #{max/60}"

end

def get_runtime(hashes)
  count = 0
  sql = "SELECT sum(smt_time+gen_time) as a FROM ProofObligationResult WHERE (1=0"
  i = 0
  for hash in hashes do
    sql = "#{sql} OR hash='#{hash}'"
#    break if i > 3 and @debug
    i = i + 1
  end
  sql = "#{sql}) AND smt_time+gen_time < 6912000000000" #this is a bug workaround -- remove later
  @connection.exec(sql) do |result|
    result.each do |row|
      count = count + row.values_at('a')[0].to_i
    end
  end
  count
end

def main
  benchmarks = []
  i = 0
  File.open('benchmarks').each do |line|
    benchmarks.push(line.strip)
    i = i + 1
    break if i > 3 and @debug
  end

  benchmarks.each do |benchmark|
    @data[benchmark] = {}
    @data[benchmark][:baseline] = {}

    if not @blacklist[:gcc][benchmark] then
      @data[benchmark][:baseline][:gcc] = {}
      collect_data(:baseline, :gcc, benchmark)
    end

    if not @blacklist[:llvm][benchmark] then
      @data[benchmark][:baseline][:llvm] = {}
      collect_data(:baseline, :llvm, benchmark)
    end
  end

  output_data(benchmarks)
end

main

