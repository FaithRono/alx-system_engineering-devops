#!/usr/bin/env ruby

regex = /^h.n$/
arg = ARGV[0]

if arg.match?(regex)
  puts arg.scan(regex).join
else
  puts""
end


