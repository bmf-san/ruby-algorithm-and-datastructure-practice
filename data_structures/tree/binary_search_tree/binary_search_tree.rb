class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(value)
    @root = insert_recursive(@root, value)
  end

  def search(value)
    search_recursive(@root, value)
  end

  def remove(value)
    @root = remove_recursive(@root, value)
  end

  def preorder(node = @root, &block)
    return if node.nil?

    block.call(node.value)
    preorder(node.left, &block)
    preorder(node.right, &block)
  end

  def inorder(node = @root, &block)
    return if node.nil?

    inorder(node.left, &block)
    block.call(node.value)
    inorder(node.right, &block)
  end

  def postorder(node = @root, &block)
    return if node.nil?

    postorder(node.left, &block)
    postorder(node.right, &block)
    block.call(node.value)
  end

  def dfs(&block)
    return if @root.nil?

    stack = [@root]
    until stack.empty?
      current = stack.pop
      block.call(current.value)
      stack.push(current.left) unless current.left.nil?
      stack.push(current.right) unless current.right.nil?
    end
  end

  private

  def insert_recursive(node, value)
    return Node.new(value) if node.nil?

    if value < node.value
      node.left = insert_recursive(node.left, value)
    elsif value > node.value
      node.right = insert_recursive(node.right, value)
    end
    node
  end

  def search_recursive(node, value)
    return false if node.nil?

    if value == node.value
      true
    elsif value < node.value
      search_recursive(node.left, value)
    else
      search_recursive(node.right, value)  # ここを修正
    end
  end

  def remove_recursive(node, value)
    return node if node.nil?

    if value < node.value
      node.left = remove_recursive(node.left, value)
    elsif value > node.value
      node.right = remove_recursive(node.right, value)
    else
      return node.right if node.left.nil?
      return node.left if node.right.nil?

      successor = find_min(node.right)
      node.value = successor.value
      node.right = remove_recursive(node.right, successor.value)  # ここを修正
    end

    node
  end

  def find_min(node)
    current = node
    current = current.left until current.left.nil?
    current
  end
end
