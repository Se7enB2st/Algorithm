#Find the input that produces the longest chain of collatz values from 1 to 1,000,000.
#ex) n = 3, sequence: 3 → 10 → 5 → 16 → 8 → 4 → 2 → 1, length: 8

def collatz_sequence(range) #takes range and outputs number with greatest
  #length of collatz sequence to reach 1

  range = range.to_s.gsub(/,/,'').to_i
  return nil if range < 1

  highest_length = 0
  start_num = 0

  (1..range).each do |n|

    length = 1 #n is part of full length to reach 1
    current_num = n

    until current_num == 1
      current_num = current_num.even? ? current_num / 2 : current_num * 3 + 1
      length += 1
    end

    next if highest_length > length
    highest_length,start_num = length,n
  end

  p "#{start_num} produced the longest chain of collatz values with #{highest_length} length"
end

def collatz_seq(num,length=1) #recursive solution.
  #Takes individual number(not range)
  #and outputs length of terms took to reach 1
  return length if num == 1

  if num % 2 == 0
    return collatz_seq(num / 2,length + 1)
  else
    return collatz_seq(3 * num + 1,length + 1)
  end

end


collatz_sequence("1,000,000") #837799 with 525 length
collatz_sequence("100") #97 with 119 length

#took range, passed individual n to recursive method to get total length of that n,
#then find max length with mapped values.
num_and_length = (1..1000000).map {|num| [num,collatz_seq(num)] }.max_by {|length| length[1]} #return [num,length]
puts "#{num_and_length.shift} produced the longest chain of collatz values with #{num_and_length.shift} length"
      #[837799, 525].shift = 837799                                             #[525].shift = 525
