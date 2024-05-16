require 'test/unit'
require_relative 'array'

class TestArrayClass < Test::Unit::TestCase
  def setup
    @array = ArrayClass.new(5)
  end

  def test_insert
    @array.insert(0, "foo")
    assert_equal("foo", @array.get(0))
  end

  def test_delete
    @array.insert(0, "foo")
    @array.insert(1, "bar")
    deleted_value = @array.delete(1)
    assert_equal("bar", deleted_value)
    assert_equal(@array.length, 1)
  end

  def test_out_of_range_insert
    assert_raise(RuntimeError) { @array.insert(10, "baz") }
  end

  def test_out_of_range_delete
    assert_raise(RuntimeError) { @array.delete(10) }
  end

  def test_get_out_of_range
    assert_raise(RuntimeError) { @array.get(10) }
  end
end
