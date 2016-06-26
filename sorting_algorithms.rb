#Different Sorting Algorithm implementation in Ruby

#Selection Sort: Time Complexity of O(n^2)

def sort(list)

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

p sort([19,7,35,99,0,77,-55]) # [-55, 0, 7, 19, 35, 77, 99]
