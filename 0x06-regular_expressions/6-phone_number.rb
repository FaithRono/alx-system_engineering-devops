#!/usr/bin/env ruby

regex = /^\d{10}$/
arg = ARGV[0]

if arg.match?(regex)
  puts arg.scan(regex).join
else
  puts""
end

