#Square(n) Sum

#Complete the squareSum method so that it squares each number passed into it and then sums the results together.

def squareSum(numbers)
  numbers.inject(0) { |sum, n| sum + n*n }
end
