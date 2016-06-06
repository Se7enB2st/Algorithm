#The Firehose Project - Algorithm Problem: Fibonacci Sequence

#The technical mathematical definition of Fibonacci numbers is below:
#fib(0) = 0 
#fib(1) = 1 
#fib(n) = fib(n-1) + fib(n-2)

#Build a method called iterative_fib that builds a table of Fibonacci numbers one-by-one like we walked you through earlier.
#After you build the entire sequence of numbers up to n digits, just return the last value.

#Recursive method
def recursive_fib(num)
  if num == 0
    return num
  elsif num ==1
    return 1
  else
    return (recursive_fib(num-1))+(recursive_fib(num-2))
  end
end

#Iterative method
def iterative_fib(num)
  return 0 if num == 0
  f1 = 0
  f2 = 1
  (num - 2).times do
    sum = f1 + f2    # sum = 1
    f1 = f2          # f1 = 1
    f2 = sum         # f2 = 1
  end
  f1 + f2
end

puts "Recursive: #{recursive_fib(5)}"
puts  "----------------------------"
puts "Iterative: #{iterative_fib(5)}"

#Test the how fast each method takes to solve the problem
require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end

