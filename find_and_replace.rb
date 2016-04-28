puts "Enter or paste your document here:"
document = gets.chomp

puts "What the word you want to remove?"
word = gets.chomp

puts "What word would you like there instead?"
new_word = gets.chomp

target_word = document.split(" ")

target_word.each do |a_word|
  if a_word != word
    print a_word + (" ")
    else print new_word + (" ")
  end
end
