#How to find a prime number between 2 numbers
#Prime numbers are numbers greater or equal to 2 and has exactly two positive divisors, 1 and the number itself. 

puts "What is your starting number?"
starting_num = gets.to_i

puts "What is your ending number?"
ending_num = gets.to_i

puts "Looking for prime numbers between #{starting_num} and #{ending_num}."

while (starting_num <= ending_num)
  prime_flag = true

  if(starting_num <= 1) #Prime numbers are 2 or greater
    prime_flag = false
  end

  x = 2 #lowest prime number possible

  while (x <= starting_num / 2) #check from number 4 or greater
    if (starting_num % x == 0) #2 is the only even prime number
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
