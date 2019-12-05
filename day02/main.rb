#!/usr/bin/env ruby

require_relative 'functions'

input = File.read('day02.input')
bytes = input.split(',').map(&:to_i)

program = bytes.dup
program[1] = 12
program[2] = 2

result = computer(program)
puts "Day 02: returned #{result[0]}"

expected = 19690720
bruteforce_result = bruteforce_computer_result(bytes, expected)
puts "Day 02: returned #{bruteforce_result.inspect}"
