# Create a method named 'sort_string' which accepts a String and rearranges all the words in ascending order, by length.

def sort_string(string)
  string.split.sort { |w1,w2| w1.length <=> w2.length }.join(" ")
end
