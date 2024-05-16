require 'test/unit'
require_relative 'heap'

class TestHeap < Test::Unit::TestCase
  def setup
    @heap = Heap.new(10)
  end

  def test_insert
    @heap.insert(5)
    assert_equal([5], @heap.instance_variable_get(:@values))
  end

  def test_remove
    @heap.insert(5)
    @heap.insert(3)
    @heap.insert(8)
    @heap.build_min_heap
    assert_equal(3, @heap.remove)
    assert_equal(5, @heap.remove)
    assert_equal(8, @heap.remove)
  end

 def test_heap_property
    @heap.insert(5)
    @heap.insert(3)
    @heap.insert(8)
    @heap.insert(1)
    @heap.insert(6)
    @heap.insert(9)
    @heap.build_min_heap

    assert_equal(1, @heap.remove)
    assert_equal(3, @heap.remove)
    assert_equal(5, @heap.remove)
    assert_equal(6, @heap.remove)
    assert_equal(8, @heap.remove)
    assert_equal(9, @heap.remove)
  end

  def test_overflow
    assert_raise(RuntimeError) do
      11.times{|i| @heap.insert(i)}
    end
  end
end
