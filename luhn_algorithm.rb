#The Firehose Project -Algorithm Problem: Luhn Algorithm

#The Luhn algorithm is a method that credit cards and other identification numbers have of determining valid numbers and invalid ones. 
#It is meant to prevent users from accidental errors.

#Step 1 - break the credit card into it's individual digits.
#Step 2 - Start from the right, double every second digit (i.e digit 2, 4, 6 etc.).
#Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
#Step 4 - Sum the digits.
#Step 5 - If the sum is divisible by 10 it's a valid number. Otherwise it's invalid.

def luhn(cardNumber)
  sum = 0 #Set Sum to 0 at the start
  nums = cardNumber.to_s.split("") #Break the credit card into it's individual digits
  nums.each_with_index do |digit, index| #Loop through every digit_with_index and add the digit to the sum
    sum += if (index % 2 == 0) #If index is divisible by two do the
             digit.to_i * 2 >= 10 ? digit.to_i*2-9 : digit.to_i*2 #Ternary: If digits is greater or equal to ten, mulitply digits by 2
           else
             digit.to_i #Else return the digit
           end
  end
  if (sum % 10) == 0# If Sum is divisible by 10, puts "valid", else return "invalid"
    puts "valid"
  else
    puts "invalid"
  end
end

luhn(4194560385008504) #Test number

#Solution 2:
module Luhn
  
  def self.is_valid?(cardNumber)
    integer_array = Luhn.card_number_to_integer_array(cardNumber)
    integer_array = integer_array.reverse
    doubled = Luhn.double_every_other(integer_array)
    subtracted_9 = Luhn.subtract_9_if_greater_than_10(doubled)
    summed_numbers = Luhn.sum_all_numbers(subtracted_9)
    result = Luhn.check_if_valid_number(summed_numbers)

    return result

  def self.card_number_to_integer_array(number_string)
    number_string.to_s.split("").map{|num| num.to_i}
  end

  def self.double_every_other(nums)
    result = []
    nums.each_with_index do |num, index|
      index.odd? ? result << num * 2 : result << num
    end
    result
  end
  
  def self.subtract_9_if_greater_than_10(nums)
    result = []
    nums.each do |num|
      num >= 10 ? result << num - 9 : result << num
    end
    result
  end

  def self.sum_all_numbers(numbers)
    numbers.inject(:+)
  end

  def self.check_if_valid_number(number)
    if (number % 10) == 0
      return true
    else
      return false
    end
  end
  
end
