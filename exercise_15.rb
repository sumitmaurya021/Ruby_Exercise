# Write a function that converts a hash to an array of its keys


hash1 = {"a" => 10, "b" => 20, "c" => 30, "d" => 100}

def convert_hash_key_to_array(hash)
  keys_array = []
    hash.each do |key, value|
      keys_array << key
    end
  keys_array
end

results = convert_hash_key_to_array(hash1)
puts results
