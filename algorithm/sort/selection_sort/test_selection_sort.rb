require 'test/unit'
require_relative 'selection_sort'

class TestSelectionSort < Test::Unit::TestCase
  def test_selection_sort
    # テスト用のデータ
    unsorted_array = [2, 5, 7, 1, 3, 9]
    sorted_array = [1, 2, 3, 5, 7, 9]

    # 選択ソートを実行
    result = selection_sort(unsorted_array.dup)

    # ソート後の配列と期待値を比較
    assert_equal(sorted_array, result)
  end
end
