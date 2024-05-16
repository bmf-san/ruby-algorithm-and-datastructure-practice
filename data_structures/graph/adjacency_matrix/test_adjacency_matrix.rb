require 'test/unit'
require_relative 'adjacency_matrix'

class TestAdjacencyMatrix < Test::Unit::TestCase
  def setup
    @graph = Graph.new(5)
  end

  def test_add_edge
    @graph.add_edge(0, 1)
    assert_equal(1, @graph.matrix[0][1])
  end


  def test_add_invalid_edge
    @graph.add_edge(-1, 1)
    assert_equal(0, @graph.matrix[-1][1])
  end
end
