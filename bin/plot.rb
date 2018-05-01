#!/usr/bin/env ruby

buckets = {}

def log10(x)
  Math.log(x)/Math.log(10)
end

timeout = 1000*1000*60
@bucket_width = log10(timeout)/100

def num_to_bucket(x)
  (log10(x)/@bucket_width).round
end

def bucket_to_num(x)
  (10**(x*@bucket_width)).round
end

ARGF.each do |line|
  pieces = line.split(" ")
  mode = "#{pieces[0]} #{pieces[1]}"
  if pieces[2] == "failed"
    pieces[2] = timeout
  end

  time = pieces[2].to_i
  bucket_number = num_to_bucket(time)

  if(bucket_number > num_to_bucket(timeout))
    STDERR.write "Got time=#{time} bucket_number=#{bucket_number}"
  end

  if (buckets[mode].nil?)
    buckets[mode] = {}
  end

  if (buckets[mode][bucket_number].nil?)
    buckets[mode][bucket_number] = 1
  else
    buckets[mode][bucket_number] = buckets[mode][bucket_number] + 1
  end
end

buckets.each do |k, bucket|
  puts k
  min = 1000000
  max = 0
  bucket.each do |u,v|
    if u < min
      min = u
    end
    if u > max
      max = u
    end
  end
  puts "min=#{min} max=#{max}"

  (min..max).each do |i|
    if bucket[i].nil?
      puts "#{bucket_to_num(i)}\t0"
    else
      puts "#{bucket_to_num(i)}\t#{bucket[i]}"
    end
  end
end
