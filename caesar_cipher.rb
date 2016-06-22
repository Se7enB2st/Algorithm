#Caesar Cipher - simple encryption algorithm that involves switching letters by a certain offset.
# generally the value 13 is used. This is called ROT13 encryption.
#Steps:	
	    #1. only encrypt string
	    #2. set up alphabet data
	    #3. find the offset 
            #4. if offset is nil, calculate distance from z and traverse from beginning
	    #5. upcase/downcase

class String
  def rot13
    return self if self.empty?
    
    data = ("a".."z").to_a #Set alphabet data to array
    encrypted_string = ""
    
    self.split('').each do |string|
      if string.to_s =~ /[a-zA-Z]/ #Any single character in the range of a-z or A-Z
        s = string.downcase
        replace_string = data[data.index(s) + 13] #Finding offset
        if replace_string.nil? #If 13 offset exceeds array length
          replace_string = data[12 - (data.index("z") - data.index(s))]
        end
        s == string ? encrypted_string << replace_string : encrypted_string << replace_string.upcase #downcase/upcase
      else
        encrypted_string << string
      end
    end
    return encrypted_string
    
  end
end

#RSpec Tests:

require 'spec_helper'

RSpec.describe String, type: :model do
  describe "String#rot13" do

    it "should be return an empty string when given an empty string" do
      expect("".rot13).to eq ""
    end

    it "should be ciphered when given a one letter string" do
      expect("a".rot13).to eq "n"
    end

    it "should keep the capitalization when given a set of capital and lowercase letters" do
      expect("aB".rot13).to eq "nO"
    end

    it "should cipher the entire string when given a string" do
      expect("Julius ATTACK Gaul Now".rot13).to eq "Whyvhf NGGNPX Tnhy Abj"
    end

    it "should result in the same string when given two transformations" do
      str = "Julius ATTACK Gaul Now"
      expect(str.rot13.rot13).to eq str
    end
    
  end
end
