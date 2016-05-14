#Calculate Mean
#Create a mathematical algorithm to calculate the mean of a series of numbers.
#The mean of a series of numbers is the sum of all items in a set, divided by the number of items in that set.

#Solution 1:
def calc_mean(ary)
  ary.inject(:+) / ary.size rescue 0
end

#Solution 2:

def calc_mean(ary)
  sum = 0
  if !ary.is_a?(Array)
    0
  elsif ary.empty?
    0
  else
    ary.each do |i|
      sum = sum + i
    end
  return sum / ary.count
  end
end
