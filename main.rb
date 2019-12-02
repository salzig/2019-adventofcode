#!/usr/bin/env ruby

require_relative 'functions'

input = File.read('day01.input')
distances = input.lines.map(&:strip).map(&:to_i)

fuel_required = distances.map(&method(:fuel_required_for)).sum

puts "Day 01: Fuel Required #{fuel_required}"
