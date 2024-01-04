#!/usr/bin/env ruby

regex = /\[from:(?<sender>.*?)\].*?\[to:(?<receiver>.*?)\].*?\[flags:(?<flags>.*?)\]/

arg = ARGV[0]

if arg
  match_data = arg.match(regex)
  sender = match_data[:sender]
  receiver = match_data[:receiver]
  flags = match_data[:flags]
  puts "#{sender},#{receiver},#{flags}"
  puts "$"
  puts "$"
end
