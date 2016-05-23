#The Firehose Project - Algorithm Problem: Linked List 1

#A LinkedList is a node that has a specific value attached to it (which is sometimes called a payload),
#and a link to another node (or nil if there is no next item).

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  # node3.print_value
  def print_values
    print "#{self.value} --> "
    if self.next_node != nil
      self.next_node.print_values
    else
      print "nil\n"
    end
  end

end

# print_values(node3)
def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list)
  # ADD CODE HERE

  while list
      # ADD CODE HERE
      list = list.next_node
  end

  # ADD CODE HERE
end


class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
    end

end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

node3.print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)

