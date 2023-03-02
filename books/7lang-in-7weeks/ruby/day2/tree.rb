class Tree
  attr_accessor :children, :node_name
  
  def initialize(dat)
    arr = dat.to_a()[0]
    @node_name = arr[0]
    @children = []
    arr[1].to_a.each() {|c| @children.push(Tree.new({c[0] => c[1]}))}
  end

  def visit(&block)
    block.call self
  end
  
  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

end

better_tree = Tree.new({
    'grandpa' => {
        'dad' => {'child 1' => {}, 'child 2' => {}},
        'uncle' => {'child 3' => {}, 'child 4' => {}}
    }
})
puts "Visiting a node"
better_tree.visit {|node| puts node.node_name}
puts
puts "visiting entire tree"
better_tree.visit_all {|node| puts node.node_name}
