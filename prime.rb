#How to find a prime number between 2 numbers
#Prime numbers are numbers greater or equal to 2

puts "What is your starting number?"
starting_num = gets.to_i

puts "What is your ending number?"
ending_num = gets.to_i

puts "Looking for prime numbers between #{starting_num} and #{ending_num}."

while (starting_num <= ending_num)
  prime_flag = true
  
  if(starting_num == 1 || starting_num <= 0)
    prime_flag = false
  end
  
  x = 2
  
  while (x < starting_num / 2)
    if (starting_num % x == 0)
      prime_flag = false
      break 
    end
    x +=1
  end
  
  if prime_flag 
    puts "A prime number is "+starting_num.to_s
  end
  starting_num += 1
end
