#!/usr/bin/env ruby

require_relative 'functions'

input = File.read('day02.input')
bytes = input.split(',').map(&:to_i)

bytes[1] = 12
bytes[2] = 2

result = computer(bytes)
puts "Day 02: returned #{result[0]}"
