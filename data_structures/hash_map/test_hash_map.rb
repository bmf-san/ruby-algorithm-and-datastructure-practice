require 'test/unit'
require_relative 'hash_map'

class TestHashMap < Test::Unit::TestCase
  def setup
    @hash_map = HashMap.new
  end

  def test_put_and_get
    @hash_map.put(1, "foo")
    assert_equal("foo", @hash_map.get(1))

    @hash_map.put(2, "bar")
    assert_equal("bar", @hash_map.get(2))
  end

  def test_overwrite_value
    @hash_map.put(1, "foo")
    @hash_map.put(1, "bar")
    assert_equal("bar", @hash_map.get(1))
  end

  def test_hash_collision
    @hash_map.put(1, "foo")
    @hash_map.put(6, "bar") # collision
    assert_equal("bar", @hash_map.get(1))
    assert_equal("bar", @hash_map.get(6))
  end

  def test_get_noexistent_key
    assert_nil(@hash_map.get(100))
  end
end
