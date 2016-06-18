#Breadth First Approach 

# Breadth first search checks the items in order of their distance from the root node. 
# First the algorithm will check each of it's children. 
# Then it will move down to the second tier, which is its children's children. 
# After that it will check it's childrens' childrens' children. 
# Meaning, it checks head node's children from left to right, then we check
# head node's left child's children. If it has siblings, then we check
# head node's right child's children.

#Tree Structure
class Tree 
  attr_accessor :payload,:children

  def initialize(payload,children)
    self.payload = payload
    self.children = children
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(item) #Append to the end of queue stack
    @queue.push(item)
  end

  def dequeue #Remove first stack on the queue
    @queue.shift
  end
end

def breadth_search(node,target_value)

  queue = Queue.new
  queue.enqueue(node)

  traverse_list = [] #Keep track of visited node
  current_node = nil

  until queue.empty?
    current_node = queue.dequeue
    return current_node if current_node.payload == target_value
    traverse_list << current_node.payload unless traverse_list.include? current_node

    current_node.children.each do |child| #add children to the queue to check next
      queue.enqueue(child) 
    end

  end
  #If queue is empty and still cant find the target value return the following:
  return "Node with #{target_value} does not exist in the Tree data structure. Traverse list = #{traverse_list}"
end


queue = Queue.new

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue
queue.enqueue(3)
queue.enqueue(4)
queue.enqueue(5)
puts queue.dequeue
queue.enqueue(6)
puts queue.dequeue
puts queue.dequeue
puts queue.dequeue
puts queue.dequeue

# Outputs: 1, 2, 3, 4, 5, 6
