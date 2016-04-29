#Given an string, sort the string by the amount of word appear in the string

puts "write down an string"
string = gets.chomp
string = string.downcase!
words = string.split

frequencies = Hash.new(0)

words.each { |word| frequencies[word] += 1}
  frequencies = frequencies.sort_by { |word, amount| amount}
  frequencies.reverse!

  frequencies.each do |word, amount|
    puts word + " " + amount.to_s 
  end
