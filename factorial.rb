#Factorial 
#Ex) Factorial of 24 = 1*2*3*4 = 24

#Solution 1: Iterative Method

module Factorial
  def self.of(number)
    (1..number).reduce(:*) || 1 unless number == nil  #Remove the fist number(1) and then remove the 2nd number(2) and multiply (:*) those together
  end                                                 #Now remove the first element from what's left(3) and multiply that with the running total(2).
end                                                   #Keep going until the entire range is done

#Solution 2: Recursive Method

module Factorial
  def self.of(number)
    if number == 1 || number == 0
      1
    else
      number * self.of(number - 1) unless number == nil 
    end
  end
end


#RSpec tests:

require 'spec_helper'

RSpec.describe Factorial, type: :module do
  describe "Factorial#of" do

    it "should result in nil when given nil" do
      expect(Factorial.of(nil)).to eq nil
    end

    it "should give the correct result when given a number" do
      expect(Factorial.of(13)).to eq 6227020800
    end

    it "should give the correct result when given a number" do
      expect(Factorial.of(0)).to eq 1
    end
  end
end

