# Create a method to check if a specific key is present in a hash

hash = {"a" => 10, "b" => 20, "c" => 30, "d" => 100}
print "Enter the key : "
key = gets.chomp

def check_if_key_present(hash, key)
  if hash.key?(key)
    print "Key is present"
  else
    print "Key is not present"
  end
end

puts check_if_key_present(hash, key)
