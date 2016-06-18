#Depth Search Approach - Depth first search is all about going deeper into the tree structure and exhausting the "children" objects
#before moving on to the siblings.

class Tree #Tree structure
  attr_accessor :payload,:children

  def initialize(payload,children)
    self.payload = payload
    self.children = children
  end
end

#this is not binary tree, so there O(log n) search can't be used
def search_recursive(root,target_value)

  return root if root.payload == target_value

  root.children.each do |child|
    node = search_recursive(child,target_value)
    return node if node
  end

  return nil

end


def depth_search(node,target_value)
  stack = [node] #2-7-6-5-11-5-9-4
  current_node = nil
  traverse_list = []#list of node that I visited


  while stack.any?       #stack.last = 2
    current_node = stack.last  #traversing tree and checking
    traverse_list << current_node unless traverse_list.include? current_node #keeping track of visited node
    return current_node if current_node.payload == target_value
    #below is setting up next node to check
    if current_node.children.any?
      child = current_node.children.select {|child| !traverse_list.include? child }.first
      child.nil? ? stack.pop : stack << child #if its nil, we traversed to both left/right child
    else
      stack.pop #in the case of leaves, you go back up to parent node
    end
  end
  return "Could not find node with value #{target_value}. Traverse list = #{traverse_list.map {|n| n.payload}}"
end



# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])

p depth_search(trunk, 11)
p search_recursive(trunk,11)
