#!/usr/bin/env ruby

input = File.read('day01.input')

fuel_required = input.lines.map(&:strip).map(&:to_i).map { |e| (e / 3).round - 2 }.sum

puts "Day 01: Fuel Required #{fuel_required}"
