# graph.rb
class Graph
  attr_reader :matrix, :size

  def initialize(size)
    @matrix = Array.new(size) { Array.new(size, 0) }
    @size = size
  end

  def add_edge(from, to)
    return unless valid_vertex?(from) && valid_vertex?(to)

    @matrix[from][to] = 1
  end

  def print_matrix
    @matrix.each { |row| p row }
  end

  private

  def valid_vertex?(vertex)
    vertex >= 0 && vertex < @size
  end
end
