#Digitize

#Given a non-negative integer, return an array / a list of the individual digits in order.


def digitize(n)
  nums = n.to_s.split('')
  nums.map { |num| num.to_i }
end
