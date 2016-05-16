#!/usr/bin/ruby

def check_repository

  status=`git status | grep clean`
  last_commit=`git log | head -n1 | sed "s/^commit //g"`

  if status == "" then
    puts "Last commit was #{last_commit}"
    puts "Status:\n #{`git status`}"
    exit 1
  else
    puts "Git repostiroy clean"
    puts "Last commit was #{last_commit}"
  end

end


check_repository
