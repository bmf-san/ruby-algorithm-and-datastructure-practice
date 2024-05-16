require 'test/unit'
require_relative 'binary_search_tree'

class TestBinarySearchTree < Test::Unit::TestCase
  def setup
    @bst = BinarySearchTree.new
    @bst.insert(5)
    @bst.insert(3)
    @bst.insert(7)
    @bst.insert(2)
    @bst.insert(4)
    @bst.insert(6)
    @bst.insert(8)
  end

  def test_insert
    assert_equal(true, @bst.search(5))
    assert_equal(true, @bst.search(3))
    assert_equal(true, @bst.search(7))
    assert_equal(true, @bst.search(2))
    assert_equal(true, @bst.search(4))
    assert_equal(true, @bst.search(6))
    assert_equal(true, @bst.search(8))
  end

  def test_remove
    @bst.remove(2)
    assert_equal(false, @bst.search(2))

    @bst.remove(5)
    assert_equal(false, @bst.search(5))

    @bst.remove(7)
    assert_equal(false, @bst.search(7))
  end
end
