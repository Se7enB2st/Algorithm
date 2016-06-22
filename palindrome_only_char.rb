# Write a method to determine if a string is a palindrome (the same forward as backwards).
# Also remove any extraneous things like spaces or punctuation from the string. So the following strings would all be palindromes. 

class String
	def palindrome?
		return true if self.length == 0
			reversed_string = ""
			string = self.scan(/[a-zA-Z]/).join('') #Extract only the chars
			string.split('').each do |char|
				reversed_string = char + reversed_string #Create reversed string
			end
			return reversed_string == string #Check if palindrome was given
	end
end

#Rspec Tests:
require 'spec_helper'

RSpec.describe String, type: :model do
  describe "String#palindrome?" do
    
    it "should return true when given an empty string" do
      expect("".palindrome?).to be true
    end
    
    it "should return true when given a one letter string" do
      expect("a".palindrome?).to be true
    end
    
    it "should return true when given the string 'racecar'" do
      expect("racecar".palindrome?).to be true
      expect("  race_car   ".palindrome?).to be true
      expect("race, car.".palindrome?).to be true
    end
    
    it "should return false when given a non palindromes" do
      expect("yolo".palindrome?).to be false
      expect("swag".palindrome?).to be false
      expect("house".palindrome?).to be false
    end
    
  end
end

