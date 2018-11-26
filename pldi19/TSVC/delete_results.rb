#!/usr/bin/env ruby

hashes=[]

count = 100

ARGF.each do |line|
  if line =~ /Dispatching hash ([a-f0-9]*)/ then
    hashes.push($~[1])
  end
end

while hashes.size > 0 do
  current = hashes.take count
  hashes = hashes.drop count

  current = current.map { |s| "hash='#{s}'" }

  puts "delete from proofobligationresult where #{current.join(" or ")};"
end
