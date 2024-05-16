require 'test/unit'
require_relative 'trie'

class TestTrie < Test::Unit::TestCase
  def setup
    @trie = Trie.new
    @trie.insert("word")
    @trie.insert("wheel")
    @trie.insert("world")
    @trie.insert("hospital")
    @trie.insert("mode")
  end

  def test_search_existing_word
    assert_true(@trie.search("mode"))
  end

  def test_search_non_existing_word
    assert_false(@trie.search("apple"))
  end

  def test_search_partial_word
    assert_true(@trie.search("wor"))
  end
end
