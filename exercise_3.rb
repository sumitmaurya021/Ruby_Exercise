# Create a method that capitalizes the first letter of each word in a sentence.


def word_cap(words)
    words.split(" ").map{|word| word.capitalize}.join(" ")
end

print "Enter Your Words : "
words = gets.chomp.to_s
puts word_cap(words)

