require 'test/unit'
require_relative 'merge_sort'

class TestMergeSort < Test::Unit::TestCase
  def test_merge
    a = [3, 27, 38]
    b = [9, 10, 43, 82]
    result = merge(a, b)
    assert_equal([3, 9, 10, 27, 38, 43, 82], result)
  end

  def test_merge_sort
    arr = [38, 27, 43, 3, 9, 82, 10]
    sorted_arr = merge_sort(arr)
    assert_equal([3, 9, 10, 27, 38, 43, 82], sorted_arr)
  end

  def test_empty_array
    arr = []
    sorted_arr = merge_sort(arr)
    assert_equal([], sorted_arr)
  end

  def test_single_element_array
    arr = [5]
    sorted_arr = merge_sort(arr)
    assert_equal([5], sorted_arr)
  end

  def test_already_sorted_array
    arr = [1, 2, 3, 4, 5]
    sorted_arr = merge_sort(arr)
    assert_equal([1, 2, 3, 4, 5], sorted_arr)
  end
end
