#!/usr/bin/ruby

line_no = 0;

File.open('candidate.s', 'w') do |output|
  File.readlines('result.s').each do |line|
    if line.include?("popq") then
      output.write "  retq\n"
      output.write "\n"
      output.write ".size strcpy, -.strcpy\n\n"
      exit 0
    else
      output.write line
    end
  end
end
