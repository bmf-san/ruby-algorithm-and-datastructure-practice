require 'test/unit'
require_relative 'bubble_sort'  # バブルソートのコードを含むファイル名に合わせて調整してください

class TestBubbleSort < Test::Unit::TestCase
  def test_bubble_sort
    assert_equal([1, 2, 3, 5, 7, 9], bubble_sort([2, 5, 7, 1, 3, 9]))
    assert_equal([-5, 0, 1, 3, 5, 7, 9], bubble_sort([5, 7, 1, 3, 9, -5, 0]))
    assert_equal([1, 2, 3], bubble_sort([3, 2, 1]))  # ここを修正
    assert_equal([1, 2, 3], bubble_sort([1, 2, 3]))  # ここを修正
    assert_equal([], bubble_sort([]))
  end
end
