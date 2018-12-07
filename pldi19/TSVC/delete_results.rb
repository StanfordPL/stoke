#!/usr/bin/env ruby

require 'set'
hashes=Set.new

count = 100

ARGF.each do |line|
  if line =~ /Dispatching hash ([a-f0-9]*)/ then
    hashes.add($~[1])
  end
end

hashes = hashes.to_a

while hashes.size > 0 do
  current = hashes.take count
  hashes = hashes.drop count

  current = current.map { |s| "hash='#{s}'" }

  puts "delete from proofobligationresult where #{current.join(" or ")};"
end
