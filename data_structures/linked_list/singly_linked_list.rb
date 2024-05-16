class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def add(new_node)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node until current.next_node.nil?
      current.next_node = new_node
    end
  end

  def insert(new_node, value)
    return if @head.nil?

    if @head.value == value
      new_node.next_node = @head
      @head = new_node
      return
    end

    current = @head
    while current.next_node
      if current.next_node.value == value
        new_node.next_node = current.next_node
        current.next_node = new_node
        return
      end
      current = current.next_node
    end

    puts "Target node not found."
  end

  def display
    current = @head
    while current
      puts "#{current.value} #{current.next_node}"
      current = current.next_node
    end
  end
end

