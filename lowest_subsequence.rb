#Given two different strings of text, find the longest common subsequence to it.

module LongestSubsequence

	def self.find(first, second)
		#Nil if any string is nil or any string's length is lower than 2
		return nil if (first.nil? && second.nil?) || [first,second].any? {|x| x.length < 2}

		permutation1 = []
		permutation2 = []

		2.upto([first,second].min_by {|x| x.length}.length) do |i| #search for the lowest length string's length
			permutation1 << first.split('').permutation(i).to_a #append all the possible permutations for first
			permutation2 << second.split('').permutation(i).to_a #append all the possible permutations for second
		end
		#1.return an 1 dimension array contain all the permutations
		#2.search for the same chars from both permutations
		#3.return the longest possible array and turn it into an string
		common_subsequence = permutation1.flatten(1).select {|x| permutation2.flatten(1).include? x }.max_by { |x| x.length }.join('')

		#Check if there is a common subsequence
		if common_subsequence.nil?
			return nil
		else
			return common_subsequence
		end

	end
end

#RSpec Tests:

require 'spec_helper'

RSpec.describe LongestSubsequence, type: :module do
  describe "LongestSubsequence#find" do
    
    it "should result in nil when given nil" do
      longest = LongestSubsequence.find(nil, nil)
      expect(longest).to eq nil
    end
    
    it "should result in nil when given no common subsequences" do
      longest = LongestSubsequence.find("a", "b")
      expect(longest).to eq nil
    end
    
    it "should return the longest subsequence when given a short string" do
      longest = LongestSubsequence.find("ABCDAF", "ACBCF")
      expect(longest.chars.sort.join).to eq "ABCF"
    end
    
  end
end
