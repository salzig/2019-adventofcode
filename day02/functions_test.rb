#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'functions'

class FunctionsTest < Minitest::Test
  def test_computer
    assert [2,0,0,0,99], computer([1,0,0,0,99])
    assert [2,3,0,3,99], computer([2,3,0,6,99])
    assert [2,4,4,5,99,0], computer([2,4,4,5,99,9801])
    assert [1,1,1,4,99,5,6,0,99], computer([30,1,1,4,2,5,6,0,99])
  end
end
