#!/usr/bin/env ruby

require 'minitest/autorun'
require 'minitest/benchmark'
require_relative 'functions'

class FunctionsTest < Minitest::Test
  def test_computer
    assert_equal [2,0,0,0,99], computer([1,0,0,0,99])
    assert_equal [2,3,0,3,99], computer([2,3,0,6,99])
    assert_equal [2,4,4,5,99,0], computer([2,4,4,5,99,9801])
    assert_equal [1,1,1,4,99,5,6,0,99], computer([30,1,1,4,2,5,6,0,99])
    assert_equal [1,2,3,4], computer([1,1,1,0, 1,0,0,0, 99])
  end
end

class FunctionsBench < Minitest::Benchmark
  def bench_computer
    input = File.read('day02.input').split(',').map(&:to_i)
    assert_performance_constant do
      computer(input)
    end
  end
end
