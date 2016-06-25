#Binary Tree Sort - Create a binary tree and sort it.

#1.The method you implement will take in an array, build a tree from the array.
#2.Then go through the tree from left to right and sorted.

class BinaryTree
	attr_accessor :payload,:left_child,:right_child

	def initialize(payload,left_child,right_child)
		self.payload = payload
		self.left_child = left_child
		self.right_child = right_child
	end
end

#Creating a Binary Tree and Sort it
#If payload < current node.payload goes to left
#if payload > current node.payload goes to right
def create_tree(current_data,payload)

	return BinaryTree.new(payload,nil,nil) if current_data == nil

	if payload < current_data.payload
		current_data.left_child = create_tree(current_data.left_child, payload)
	else
		current_data.right_child = create_tree(current_data.right_child, payload)
	end

	return current_data

end

#Turn Sorted Tree into an string
def inorder_traversal(current_data, payload=[]) #Currently payload is empty

	return nil if current_data == nil
	inorder_traversal(current_data.left_child,payload) #left side of tree
	print current_data.payload.to_s + " "
	inorder_traversal(current_data.right_child,payload) #right side of tree
end


def current_data(payload)

	current_data= nil #At first current data is nil

	while payload.any?
		current_data = create_tree(current_data,payload.shift) #remove the first node from array 
	end

	return inorder_traversal(current_data) #current_data = 1 4 6 7 9 10 14
end

seven = BinaryTree.new(7, nil, nil)
five  = BinaryTree.new(5, nil, nil)
four  = BinaryTree.new(4, nil, nil)
six   = BinaryTree.new(6, nil, seven)
three = BinaryTree.new(3, nil, six)
two   = BinaryTree.new(2, four, five)
trunk = BinaryTree.new(1, two, three)

current_data([7, 4, 9, 1, 6, 14, 10]) # => 1 4 6 7 9 10 14
