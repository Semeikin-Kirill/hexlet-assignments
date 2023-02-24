# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def setup
    @stack = Stack.new
  end

  def test_stack_empty
    assert(@stack.empty?)
  end

  def test_stack_add
    result = ['g', 'r']
    @stack.push! 'g'
    @stack.push!  'r'
    assert(@stack.to_a == result)
  end

  def test_stack_pop
    exp = ['g']
    @stack.pop!
    assert(@stack.to_a != exp)
  end

  def test_stack_clear
    @stack.clear!
    assert(@stack.empty?)
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
