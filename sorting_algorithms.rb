#Different Sorting Algorithm implementation in Ruby


#Selection Sort: Time Complexity of O(n^2)

def selection_sort(list)

	return list if list.size <= 1 # check if array is already sorted

	for i in 0..list.size - 2 #since start at 0 and dont need check (n-1) so its (n-2)
		min = i # smallest value
		for j in i + 1..list.size - 1 #loop through the rest of array
			min = j if list[j] < list[min]
		end
		list[i], list[min] = list[min], list[i] #swap if value is less than current min value
	end
	return list
end

p selection_sort([19,7,35,99,0,77,-55]) # [-55, 0, 7, 19, 35, 77, 99]


#Insertion Sort: Time Complexity of O(n^2) for worst case and O(n) for best case

def insertion_sort(list)
	return list if list.size <= 1 #check if the list is sorted already

	for i in 1 .. (list.size - 1) #dont need to check the last number
		current_num = list[i] #keep track of number in sorted portion
		index = i #keep track of index in the unsorted portion

		while index > 0 && list[index-1] > current_num #loop through sorted portion and find the number that is less than current num
			list[index] = list[index - 1] #shifting each number in the sorted portion 1 place to the right
			index = index - 1 #update the counter left to right
		end
		list[index] = current_num #able to insert the number into the sorted portion because index are already shifted to the right
	end
	return list #return sorted list
end

p insertion_sort([19,7,35,99,0,77,-55]) # [-55, 0, 7, 19, 35, 77, 99]


#Bubble Sort: Time Complexity of O(n^2) for worst case and O(n) for best case

def bubble_sort(list)
	
	return list if list.size <= 1 #check if the list is sorted already
	n = list.size
	
	loop do
		swapped = false #swapped flag 
		
		(n-1).times do |i| #everytime loop run through reduce the number of loop time by 1
			if list[i] > list[i+1] #if current number is greater than next number then we swapped them
				list[i], list[i+1] = list[i+1], list[i] 
				swapped = true #set swapped to true and keep running the loop
			end
		end
		break unless swapped #if no swapped was involved in current loop then we have a sorted list and exit out the loop
	end
	
	return list #return sorted list
end

p bubble_sort([0,-23,-77,35,9,88]) # [-77, -23, 0, 9, 35, 88]
