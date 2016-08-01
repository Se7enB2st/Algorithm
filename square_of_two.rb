# Create a method which check if number is a square of 2

def square_of_two(number)
  return false if number == 0
    while(number % 2 == 0)
   	  number = number / 2
    end
      return false if number > 1
    true
end
