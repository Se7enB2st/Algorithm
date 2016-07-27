# Divide an array of numbers into two array: one with all even numbers, and other with all odd number

array = [99, 12, -267, 0, -17, 786, 67, -99, 100, -333, 362, -200]

even_array, odd_array = array.partition(&:even?) 

p even_array # [12, 0, 786, 100, 362, -200]
p odd_array # [99, -267, -17, 67, -99, -333]
