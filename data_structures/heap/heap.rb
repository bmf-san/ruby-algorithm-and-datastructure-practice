class Heap
  def initialize(maxsize)
    @values = []
    @size = 0
    @maxsize = maxsize
  end

  def leaf?(index)
    index >= (@size/2) && index < @size
  end

  def parent(index)
    (index-1) /2
  end

  def leftchild(index)
    2 * index + 1
  end

  def rightchild(index)
    2 * index + 2
  end

  def insert(item)
    raise "Heap is full" if @size >= @maxsize

    @values[@size] = item
    @size += 1
    up_heapify(@size-1)
  end

  def swap(first, second)
    @values[first], @values[second] = @values[second], @values[first]
  end

  def up_heapify(index)
    while index > 0 && @values[index] < @values[parent(index)]
      swap(index, parent(index))
      index = parent(index)
    end
  end

  def down_heapify(current)
    return if leaf?(current)

    smallest = current
    left_child_index = leftchild(current)
    right_child_index = rightchild(current)

    if left_child_index < @size && @values[left_child_index] < @values[smallest]
      smallest = left_child_index
    end
    if right_child_index < @size && @values[right_child_index] < @values[smallest]
      smallest = right_child_index
    end
    if smallest != current
      swap(current, smallest)
      down_heapify(smallest)
    end
  end

  def build_min_heap
    ((@size/2) - 1).downto(0) do |index|
      down_heapify(index)
    end
  end

  def remove
    top = @values[0]
    @values[0] = @values[@size-1]
    @values.pop
    @size -= 1
    down_heapify(0)
    top
  end
end
