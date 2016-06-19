#The Firehose Project - Algorithm Problem: Reverse Linked List Using Recursive Approach

#A LinkedList is a node that has a specific value attached to it (which is sometimes called a payload),
#and a link to another node (or nil if there is no next item).

#Use Recursive Method

class LinkedListNode
  attr_accessor :payload, :next_node

  def initialize(payload, next_node=nil)
    self.payload = payload
    self.next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.payload} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(original_list, previous=nil) # original list 12 -> 99 -> 37 -> nil
  # store current_head value
  current_head = original_list.next_node # (1). 99 -> 37 -> nil, (2). 37 -> nil, (3). nil
  # change the current nodes next link to previous node (initially nil)
  original_list.next_node = previous # (1). 12 -> nil, (2). 99 -> 12 -> nil, (3). 37 -> 99 -> 12 -> nil
  # if the current_head does not equal nil, utilize recursive reverse_list
  if current_head != nil
    # set the current node to be the next node until the node value is nil
    reverse_list(current_head, original_list)
  else
    # return reversed order of original list
    original_list
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
print_reverse = reverse_list(node3)
print_values(print_reverse)
