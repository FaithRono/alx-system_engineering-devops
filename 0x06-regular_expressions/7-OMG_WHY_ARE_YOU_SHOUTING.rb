#!/usr/bin/env ruby

regex = /[A-Z]/

arg = ARGV[0]

if arg
  upper_alphas = arg.scan(regex)
  puts upper_alphas.join('')
else
  puts ""
end
