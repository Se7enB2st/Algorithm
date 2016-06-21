# Determine the largest prime factor of an input integer
# 1.Find all factors of a number first
# 2.Filter out only the prime numbers and pop the biggest number

class LargestPrimeFactor

  def is_prime?(number)
    return false if number < 2 #prime are number greater than 2

    i = 2 #lowest prime number
    while i <= number - 1
      return false if number % i == 0
      i += 1
    end

    return true
  end

  def largest_prime_of(number)
    #number is multiple of its factors
    return nil unless number

    factors = []
    (1..number).each {|n| factors << n if number % n == 0 }

    return (factors.select {|x| is_prime? x }.max)

  end

end

#RSpec test:

require 'spec_helper'

RSpec.describe LargestPrimeFactor, type: :model do
  describe "LargestPrimeFactor#largest_prime_of" do

    it "should result in nil when given nil" do
      number = nil
      find = LargestPrimeFactor.new
      largestprime = find.largest_prime_of(number)
      expect(largestprime).to eq nil
    end

    it "should give the largest prime when given a small number" do
      number = 10
      find = LargestPrimeFactor.new
      largestprime = find.largest_prime_of(number)
      expect(largestprime).to eq 5
    end

    it "should give the largest prime when given a large number" do
      number = 13195
      find = LargestPrimeFactor.new
      largestprime = find.largest_prime_of(number)
      expect(largestprime).to eq 29
    end

    it "should give the largest prime when given a number" do
      number = 2
      find = LargestPrimeFactor.new
      largestprime = find.largest_prime_of(number)
      expect(largestprime).to eq 2
    end

  end
end
