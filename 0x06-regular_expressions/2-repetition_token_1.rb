#!/usr/bin/env ruby

regex = /hb[t]{0,1}n/

arg = ARGV[0]

if arg && arg.match(regex)
  puts arg.scan(regex).join
else
  puts ""
end
