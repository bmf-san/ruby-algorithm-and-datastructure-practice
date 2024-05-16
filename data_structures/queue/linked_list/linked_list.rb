class Node
  attr_accessor :val, :next_node

  def initialize(val)
    @val = val
    @next_node = nil
  end
end

class Queue
  attr_accessor :top

  def initialize
    @top = nil
  end

  def enqueue(item)
    if @top.nil?
      @top = Node.new(item)
    else
      current = @top
      while current.next_node
        current = current.next_node
      end
      current.next_node = Node.new(item)
    end
  end

  def dequeue
    @top = @top.next_node if @top
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
      puts current.val
      current = current.next_node
    end
  end
end
