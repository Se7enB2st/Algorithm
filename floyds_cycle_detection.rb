#Floyd's Circle Detection Algorithms 

class LinkedListNode
  attr_accessor :payload,:next_node

  def initialize(payload,next_node = nil)
    @payload = payload
    @next_node = next_node
  end
end

def print_values(list_node)
  print "#{list_node.payload} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

#Use Floyd's Cycle Detection to check existance of infitite loop
def infinite_loop?(list_node) 
  #Both starts at node1(37)
  fast_pointer = list_node
  slow_pointer = list_node

  while slow_pointer && fast_pointer.next_node

    slow_pointer = slow_pointer.next_node              #node3 (12)->(99)->(37)
    fast_pointer = fast_pointer.next_node.next_node    #node2 (99)->(12)->(37)

    if slow_pointer == fast_pointer #if slow pointer = fast pointer -> infinite loop
      return true
    end
  end

  return false

end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99,node1)
node3 = LinkedListNode.new(12,node2)

node1.next_node = node3 #assigning tail to head, making this inifinite LinkedList Loop

p infinite_loop?(node1)
