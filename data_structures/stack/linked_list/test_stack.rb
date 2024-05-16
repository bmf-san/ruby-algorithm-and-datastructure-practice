require 'test/unit'
require_relative 'stack'

class TestStack < Test::Unit::TestCase
  def setup
    @stack = Stack.new
  end

  def test_push
    @stack.push(1)
    @stack.push(2)
    assert_equal(2, @stack.top.value)
  end

  def test_peek
    assert_nil(@stack.peek)
    @stack.push(1)
    @stack.push(2)
    assert_equal(2, @stack.peek.value)
  end

  def test_empty
    assert(@stack.empty?)
    @stack.push(1)
    refute(@stack.empty?)
  end

   def test_pop
    @stack.push(1)
    @stack.push(2)
    assert_equal(1, @stack.pop.value)
  end
end
