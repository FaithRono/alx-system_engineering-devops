#!/usr/bin/env ruby

regex = /School/

arg = ARGV[0]

if arg && arg.match?(regex)
  puts arg.scan(regex).join
else
  puts""
end
