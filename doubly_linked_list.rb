#Doubly Linked List Structure in Ruby

#In doubly linked list, each node contains two fields, called links,
#that are references to the previous and to the next node in the sequence of nodes.
#With the addition of node's data or payload.

class DoublyLinkedList
  attr_accessor :previous_node, :payload, :next_node

  def initialize(previous_node, payload, next_node)
    self.previous_node = previous_node
    self.payload = payload
    self.next_node = next_node
  end
end
