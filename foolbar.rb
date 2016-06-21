#Foolbar coding challenge
#Rule 1: For all numbers that are divisible by three, the player should say "foo."
#Rule 2: For any number divisible by five, the player should say "bar."
#Rule 3: Numbers divisible by both become "Foobar."


#prompt user for a number of pattern they want to see
puts "How many digits of pattern you want to see?"
digits =gets.to_i

n = 0

while n < digits
  n = n+1
#foobar logic:    
    if n % 3 == 0 && n % 5 == 0
        puts "foobar"
    elsif n % 3 == 0
        puts "foo"
    elsif n % 5 == 0 
        puts "bar"
    else
        puts "#{n}"
  end
end

#Solution 2:
def fizzbuzz(num)
  i = 0
  while i < num
  i += 1
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz"
    elsif i % 5 == 0
      puts "Buzz"
    elsif i % 3 == 0
      puts "Fizz"
    else
      puts i
    end
  end
end
