# Write a function to find the key associated with the maximum value in a hash

hash1 = {"a" => 10, "b" => 20, "c" => 30, "d" => 100}

def find_max_key(hash)
  max_value = 0
  max_key = 0
    hash.map do |k,v|
    if v > max_value
      max_value = v
      max_key = k
    end
  end
max_key
end
puts find_max_key(hash1)
