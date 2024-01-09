# Write a function to count the number of vowels in a string.

def vowels_counter(words)
  words.scan(/[aeiou]/).count
end

print "Enter a string: "
words = gets.chomp
puts "The number of vowels in the string is: #{vowels_counter(words)}"
