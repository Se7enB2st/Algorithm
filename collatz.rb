#n → n/2 (n is even)
#n → 3n + 1 (n is odd)

def collatz(num) 
  num_array = []
  num_array.push[num]

  while num != 1
    if num % 2 == 0
      num = num/2
      num_array.push[num]
    else
      num = 3*num+1
      num_array.push(num)
    end
  end
  return num_array.length
end

def counter(num1, num2)
  counter_array = []
  while num1 <= num2
    n = collatz(num1)
    num1 += 1
    counter_array << n
  end
  puts "#{counter_array.index(counter_array.max)+1} has the longest collatz sequence at #{counter_array.max}."
end

counter(1, 1000000)
