# Write a method that inputs a number of people and returns the number of total handshakes 
# needed for everyone to shake everyone else's hand  

def handshakes(num)
	(1..num).reduce(:+)
end 
