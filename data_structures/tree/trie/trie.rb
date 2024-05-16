class Node
  attr_accessor :key, :children

  def initialize(key = '')
    @key = key
    @children = {}
  end
end

class Trie
  def initialize
    @root = Node.new
  end

  def insert(word)
    cur_node = @root

    word.each_char do | char|
      cur_node.children[char] ||= Node.new(char)
      cur_node = cur_node.children[char]
    end
  end

  def search(word)
    cur_node = @root

    word.each_char do |char|
      return false unless cur_node.children[char]
      cur_node = cur_node.children[char]
    end

    true
  end
end

