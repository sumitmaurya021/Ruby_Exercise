# Implement a method to remove a key-value pair from a hash


hash1 = {"a" => 10, "b" => 20, "c" => 30, "d" => 100}

def remove_key(hash, key)
  hash.delete(key)
  hash
end

puts remove_key(hash1, "b")
