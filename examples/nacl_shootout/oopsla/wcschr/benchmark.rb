#!/usr/bin/ruby

if(ARGV.length != 1) 
  print "Provide a directory as a command line argument\n"
  exit 1
end

@directory = ARGV[0]
@best_index = -1
@best_value = -1
@original = 0

Dir.chdir @directory


def update_best(index, value)
  if(@best_value == -1 or value < @best_value) then
    @best_index = index
    @best_value = value
  end
end

def benchmark_file(number)

  if not File.exist?("#{number}.bin") then
    %x(stoke replace --nacl -i ../binary --rewrite #{number}.s -o #{number}.bin >/dev/null 2>/dev/null)
  end

  if not File.exist?("#{number}.out") then
    %x(timeout 3m sel_ldr.py #{number}.bin > #{number}.out 2>/dev/null)
  end

  times = []
  File.open("#{number}.out").each do |log|
    match = /[a-z]*[ ]*\(.*\): ([0-9]*)/.match(log)
    if match then
#      print "  line #{match[0]}"
#      print "  got time #{match[1].to_i}\n"
      times.push(match[1].to_i)
    end
  end

  if(times.length != 10 && times.length != 20)
    return :bad
  else
    times = times.take(10)
    sum = times.inject(0) { |x,y| x + y }
    average = sum.to_f/10
    return average
  end
end

File.open("benchmark.csv", 'w') do |outfile|

  # Benchmark the target
  @original = benchmark_file("../target")
  print "Original time: #{@original}\n"

  # Benchmark each verified rewrite
  File.open("verify_times").each do |line|
    pieces = line.split(",")
    file = pieces[0]
    number = pieces[0].split(".")[0]
    status = pieces[1]

    if (status == "yes")
      result = benchmark_file(number)
      if(result == :bad) then
        outfile.write("#{number},bad\n")
      else 
        print "Time for #{number}: #{result}; #{result.to_f/@original}\n"
        outfile.write("#{number},#{result}\n")
        update_best(number,result)
      end
    end
  end
end

File.open("benchmark_best.csv", 'w') do |outfile|
  outfile.write("best_index,best_value,original_value,speedup\n")
  outfile.write("#{@best_index},#{@best_value},#{@original},#{@best_value.to_f/@original}\n")
end
