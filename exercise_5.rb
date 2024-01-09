# Implement a method to remove duplicate characters from a string.


def remove_duplicate_char(words)
    name = words.chars
    output = []

    name.each do |word|
    if !output.include?(word)
        output << word
    else
      next
    end
  end
    output.join("")
end

print "Enter Your Words : "
words = gets.chomp.to_s
puts "Removed Duplicate Character #{remove_duplicate_char(words)}"
