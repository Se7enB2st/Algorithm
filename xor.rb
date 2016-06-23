#Swap value of 2 variables without using a 3rd variable.

#XOR solution:

x = 20
y = 50

x = x ^ y
y = y ^ x
x = x ^ y

puts "X: #{x}" #50
puts "Y: #{y}" #20


#Addition and Subtraction

a = 10
b = 30

a = a + b
b = a - b
a = a - b

puts "A: #{a}" #30
puts "B: #{b}" #10

#Swap the value of 2 variables using a 3rd variable

x = 70
y = 100

temp = x
x = y
y = temp

puts "X: #{x}" #100
puts "Y: #{y}" #70
