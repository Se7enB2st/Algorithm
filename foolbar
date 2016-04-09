=begin 
 Foolbar code challenge for The Firehose Project:
 For all numbers that are divisible by three, the player should say "foo."
 For any number divisible by five, the player should say "bar."
 Numbers divisible by both become "Foobar."
 =end

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
