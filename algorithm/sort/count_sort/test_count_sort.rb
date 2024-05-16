require 'test/unit'
require_relative 'count_sort'

class TestCountSort < Test::Unit::TestCase
  def test_count_sort
    # テストケース1: 通常のソート
    s1 = [5, 3, 2, 1, 2, 3, 4]
    max_val1 = 5
    expected1 = [1, 2, 2, 3, 3, 4, 5]
    assert_equal(expected1, count_sort(s1, max_val1))

    # テストケース2: 重複する要素のソート
    s2 = [3, 1, 2, 1, 3, 2, 2]
    max_val2 = 3
    expected2 = [1, 1, 2, 2, 2, 3, 3]
    assert_equal(expected2, count_sort(s2, max_val2))

    # テストケース3: ソートする要素がすべて同じ
    s3 = [2, 2, 2, 2, 2]
    max_val3 = 2
    expected3 = [2, 2, 2, 2, 2]
    assert_equal(expected3, count_sort(s3, max_val3))
  end
end
