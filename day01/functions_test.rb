#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'functions'

class FunctionsTest < Minitest::Test
  def test_example
    assert true
  end

  def test_fuel_required_for
    assert_equal 2, fuel_required_for(12)
    assert_equal 2, fuel_required_for(14)
    assert_equal 654, fuel_required_for(1969)
    assert_equal 33583, fuel_required_for(100756)
  end

  def test_recursiv_fuel_required_for
    assert_equal 966, recursiv_fuel_required_for(1969)
    assert_equal 50346, recursiv_fuel_required_for(100756)
  end
end
