require 'set'

class GraphNode
  attr_accessor :val, :neighbors

  def initialize(val)
    self.val = val
    self.neighbors = []
  end

  def add_neighbor(node)
    self.neighbors << node
  end
end

def bfs(starting_node, target_value)
  queue = [starting_node]
  visited = Set.new()

  until queue.empty?
    node = queue.shift
    unless visited.include?(node)
      return node.val if node.val == target_value
      visited.add(node)
      queue += node.neighbors
    end
  end
  
  return nil
end

p a = GraphNode.new('a')
p b = GraphNode.new('b')
p c = GraphNode.new('c')
p d = GraphNode.new('d')
p e = GraphNode.new('e')
p f = GraphNode.new('f')
p a.neighbors = [b, c, e]
p c.neighbors = [b, d]
p e.neighbors = [a]
p f.neighbors = [e]
p bfs(a, "b")
p bfs(a, "f")