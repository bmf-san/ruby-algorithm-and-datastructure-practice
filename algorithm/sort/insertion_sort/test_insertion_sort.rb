require 'test/unit'
require_relative 'insertion_sort'

class TestInsertionSort < Test::Unit::TestCase
  def test_insertion_sort
    assert_equal([1, 2, 3, 5, 7, 9], insertion_sort([2, 5, 7, 1, 3, 9]))
    assert_equal([-3, -1, 0, 2, 5], insertion_sort([0, -3, 5, -1, 2]))
    assert_equal([], insertion_sort([]))
    assert_equal([1], insertion_sort([1]))
  end
end
