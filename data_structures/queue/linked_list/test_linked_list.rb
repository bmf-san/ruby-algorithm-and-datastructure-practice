require 'test/unit'
require_relative 'linked_list'

class TestQueue < Test::Unit::TestCase
  def setup
    @q = Queue.new
    @q.enqueue(1)
    @q.enqueue(2)
    @q.enqueue(3)
  end

  def test_dequeue
    @q.dequeue
    assert_equal 2, @q.top.val
    @q.dequeue
    assert_equal 3, @q.top.val
    @q.dequeue
    assert_nil @q.top
  end

  def test_peek
    assert_equal 1, @q.peek.val
  end

  def test_empty
    q2 = Queue.new
    assert_equal true, q2.empty?
    assert_equal false, @q.empty?
  end
end
