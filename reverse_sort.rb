#Given an array, sort the array in reverse and proper order

def sorted(any_array, reverse = false) #Set the reverse to false
  if
    reverse == false 
    any_array.sort { |a,b| a <=> b} #Proper order
  else
    any_array.sort { |a,b| b <=> a} #Reverse order
  end
end


any_array =["Lion King","Finding Nemo", "Beauty and the Beast"]

puts "Proper order: #{sorted(any_array)}."
puts "In reverse order: #{sorted(any_array, true)}"
