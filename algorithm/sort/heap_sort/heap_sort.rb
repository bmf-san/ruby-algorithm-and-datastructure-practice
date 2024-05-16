# Heap is a heap.
class Heap
  attr_accessor :values, :size, :maxsize

  def initialize(maxsize)
    @values = []
    @size = 0
    @maxsize = maxsize
  end

  # leaf checks whether index is a leaf.
  def leaf?(index)
    index >= (@size / 2) && index <= @size
  end

  # parent checks whether index is a parent.
  def parent(index)
    (index - 1) / 2
  end

  # left_child checks whether index is a left child.
  def left_child(index)
    2 * index + 1
  end

  # right_child checks whether index is a right child.
  def right_child(index)
    2 * index + 2
  end

  # insert inserts an item to a heap.
  def insert(item)
    raise 'Heap is full' if @size >= @maxsize

    @values << item
    @size += 1
    up_heapify(@size - 1)
  end

  # swap swaps two values.
  def swap(first, second)
    @values[first], @values[second] = @values[second], @values[first]
  end

  # up_heapify reconstructs a heap upwards.
  def up_heapify(index)
    while @values[index] < @values[parent(index)]
      swap(index, parent(index))
      index = parent(index)
    end
  end

  # down_heapify reconstructs a heap downwards.
  def down_heapify(current)
    return if leaf?(current)

    smallest = current
    left_child_index = left_child(current)
    right_child_index = right_child(current)

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

  # build_min_heap builds a min heap.
  def build_min_heap
    ((@size / 2) - 1).downto(0) do |index|
      down_heapify(index)
    end
  end

  # remove removes a value.
  def remove
    top = @values[0]
    @values[0] = @values[@size - 1]
    @values = @values[0...(@size - 1)]
    @size -= 1
    down_heapify(0)
    top
  end
end

def heap_sort(arr)
  h = Heap.new(arr.length)
  arr.each { |item| h.insert(item) }
  h.build_min_heap

  result = []
  arr.length.times { result << h.remove }

  result
end
