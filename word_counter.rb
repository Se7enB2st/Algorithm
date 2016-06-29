#Build a method counts the frequency of a specific word in a string of many words.

module WordCounter

	def self.count(string)
		return nil if string == nil || string == "" #check for error message
		
		words = string.downcase.gsub(/\W/, ' ').split(" ") #remove any non-word character
		counts = Hash.new (0) 
		words.each_with_object(counts) { |word,counts| counts[word] += 1 } #use Hash object to count the frequency
	end
	
end

#RSpec tests:

require 'spec_helper'

RSpec.describe WordCounter, type: :module do
  describe "WordCounter#count" do

    it "should return nil when given nil" do
      result = WordCounter.count(nil)
      expect(result).to be nil
    end

    it "should return nil when given empty string" do
      result = WordCounter.count("")
      expect(result).to be nil
    end

    it "should return correct hash when given one word" do
      result = WordCounter.count("hello")
      expected = {
        "hello" => 1
      }
      expect(result).to eq expected
    end

    it "should return correct hash when given a sentence" do
      result = WordCounter.count("All the code in the world")
      expected = {
        "all"  => 1,
        "the"  => 2,
        "code" => 1,
        "in"   => 1,
        "world"=> 1
      }

      expect(result).to eq expected
    end  
  end
end
