class Stack
  class Node
    attr_accessor :value, :next_node

    def initialize(value)
      @value = value
      @next_node = nil
    end
  end

  def initialize
    @top = nil
  end

  attr_accessor :top

  def pop
    @top = @top&.next_node
  end

  def push(item)
    new_node = Node.new(item)
    new_node.next_node = @top
    @top = new_node
  end

  def peek
    @top
  end

  def empty?
    @top.nil?
  end

  def traverse
    current = @top
    while current
      puts current.value
      current = current.next_node
    end
  end
end
