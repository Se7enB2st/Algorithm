#Ordinal coding challenge for The Firehose Project:

puts "Enter a number here:"

num = gets.to_i

def ordinal(n)

  x = (n % 10)
  tenth = (n % 100) #Need %100 for number 11 - 19
  
  if tenth >= 11 &&  tenth <=19
    return "That is the #{n}th item."
  elsif x == 1
    return "That is the #{n}st item."
  elsif x == 2
    return "That is the #{n}nd item."
  elsif x == 3
    return "That is the #{n}rd item."
  else
    return "That is the #{n}th item."
  end
end

puts ordinal(num)
