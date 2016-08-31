#The Firehose Project - Algorithm Problem: Fibonacci Sequence

#The technical mathematical definition of Fibonacci numbers is below:
#fib(0) = 0 
#fib(1) = 1 
#fib(n) = fib(n-1) + fib(n-2)

#Recursive method
def recursive_fib(num)
  if num == 0 || num == 1
    return 1
  else
    return (recursive_fib(num - 1) + recursive_fib(num - 2))
  end
end

#Iterative method
def iterative_fib(num)
  sequence = [0,1] #hardcoding first two terms
  i = 2 #index to be created next

  while i <= num
    sequence << sequence[i - 1] + sequence[i - 2]
    i += 1
  end

  return sequence[num]
end

puts "Recursive: #{recursive_fib(5)}"
puts  "----------------------------"
puts "Iterative: #{iterative_fib(5)}"

#Test how fast each method took to find the solution
require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) } #Took 2.920661 sec
  x.report("iterative_fib")  { iterative_fib(num) } #Took 0.000012 sec
end


