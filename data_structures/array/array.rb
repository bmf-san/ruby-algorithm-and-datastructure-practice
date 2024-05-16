class ArrayClass
  attr_reader :length

  def initialize(capacity)
    @data = Array.new(capacity)
    @length = 0
  end

  def insert(index, value)
    raise "Array is full" if @length == @data.length
    raise "Out of index range" if index != @length && index >= @length

    # shift data
    (@length).downto(index + 1) do |i|
      @data[i] = @data[i - 1]
    end

    # insert value
    @data[index] = value

    # update length
    @length += 1
  end

  def delete(index)
    raise "Out of index range" if index >= @length

    value = @data[index]

    # shift data
    (index...@length - 1).each do |i|
      @data[i] = @data[i + 1]
    end

    # unset
    @data[@length - 1] = nil

    # update length
    @length -= 1

    value
  end

  def get(index)
    raise "Out of index range" if index >= @length

    @data[index]
  end
end
