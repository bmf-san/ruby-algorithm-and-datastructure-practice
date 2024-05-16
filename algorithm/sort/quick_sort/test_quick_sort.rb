require 'test/unit'
require_relative 'quick_sort'

class TestQuickSort < Test::Unit::TestCase
  def test_quick_sort
    assert_equal([1, 2, 3, 5, 7, 9], quick_sort([2, 5, 7, 1, 3, 9]))
    assert_equal([-3, 0, 1, 2, 4, 6, 7, 8, 9], quick_sort([7, 2, 1, 8, -3, 9, 0, 6, 4]))
    assert_equal([1, 2, 3, 4, 5, 6, 7, 8, 9], quick_sort([9, 8, 7, 6, 5, 4, 3, 2, 1]))
  end
end
