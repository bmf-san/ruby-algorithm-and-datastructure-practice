# test_linked_list.rb
require 'test/unit'
require_relative 'singly_linked_list'

class TestLinkedList < Test::Unit::TestCase
  def setup
    @list = LinkedList.new
    @first = Node.new("first")
    @second = Node.new("second")
    @third = Node.new("third")
    @between = Node.new("between")
  end

  def test_add
    @list.add(@first)
    assert_equal @first, @list.head
    assert_nil @first.next_node

    @list.add(@second)
    assert_equal @second, @list.head.next_node
    assert_nil @second.next_node
  end

  def test_insert
    @list.add(@first)
    @list.add(@third)
    @list.insert(@between, "third")

    assert_equal @first, @list.head
    assert_equal @between, @list.head.next_node
    assert_equal @third, @list.head.next_node.next_node
  end
end
