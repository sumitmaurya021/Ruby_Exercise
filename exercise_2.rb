# Implement a function that checks if a string is a palindrome.
def palindrome(word)
  if word.length == 0 || word.length == 1
    print "This is a palindrome"
  elsif word[0] == word[-1]
    palindrome(word[1..-2])
  else
    print "This is not a palindrome"
  end
end

print "Enter A Word : "
user_input = gets.chomp.to_s
puts palindrome(user_input)
