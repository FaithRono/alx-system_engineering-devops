#!/usr/bin/env ruby

regex = /hbt{2,5}n/
arg = ARGV[0]

if arg.match?(regex)
  puts arg.scan(regex).join

end

