require 'test/unit'
require_relative 'heap_sort'

class TestHeapSort < Test::Unit::TestCase
  def test_heap_sort
    arr = [3, 6, 8, 10, 1, 2, 1]
    sorted_arr = heap_sort(arr)
    assert_equal(sorted_arr, [1, 1, 2, 3, 6, 8, 10])
  end

  def test_empty_array
    arr = []
    sorted_arr = heap_sort(arr)
    assert_equal(sorted_arr, [])
  end

  def test_sorted_array
    arr = [1, 2, 3, 4, 5]
    sorted_arr = heap_sort(arr)
    assert_equal(sorted_arr, [1, 2, 3, 4, 5])
  end

  def test_reverse_sorted_array
    arr = [5, 4, 3, 2, 1]
    sorted_arr = heap_sort(arr)
    assert_equal(sorted_arr, [1, 2, 3, 4, 5])
  end

  def test_duplicate_elements
    arr = [3, 2, 1, 2, 3]
    sorted_arr = heap_sort(arr)
    assert_equal(sorted_arr, [1, 2, 2, 3, 3])
  end
end
