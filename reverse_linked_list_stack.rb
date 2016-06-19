#The Firehose Project - Algorithm Problem: Reverse a linked list using stack

#A LinkedList is a node that has a specific value attached to it (which is sometimes called a payload),
#and a link to another node (or nil if there is no next item).

class LinkedListNode
  attr_accessor :payload, :next_node

  def initialize(payload, next_node=nil)
    self.payload = payload
    self.next_node = next_node
  end
end

# Stack data structure we are using to help us reverse the linked list
class Stack #LIFO
  attr_reader :list

  def initialize
    @list = nil
  end

  # push a value onto the stack
  def push(value)
    @list = LinkedListNode.new(value, @list)
  end

  # pop top item off the stack and return the value to the user
  def pop
    # store top node value in variable
    node_value = @list.value
    # overwrite top node with next node in stack AKA pop top node off stack
    @list = @list.next_node
    # return top node value
    return node_value
  end
end

# recursive function prints node values in linked list
def print_values(list_node)
  if list_node
    print "#{list_node.payload} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(original_list)            # 12 -> 99 -> 37 -> nil
  # create a new stack
  stack = Stack.new
  # loop through linked list and push each node onto the stack
  while original_list != nil
    # push node from original list on to the new stack
    stack.push(original_list.payload)
    # set the next value in the original list to be next value to be push off
    original_list = original_list.next_node
  end
  stack.list
end

# building 3 individual nodes and linking them to each other
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)             # 12 -> 99 -> 37 -> nil
puts "-------"
revlist = reverse_list(node3)
print_values(revlist)           # 37 -> 99 -> 12 -> nil

