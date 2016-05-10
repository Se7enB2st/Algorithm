#Sum Array!

#Write a method sum that takes an array of numbers and returns the sum of the numbers. 

def sum(numbers)
  numbers.inject(0) { |sum,x| x + sum}
end
