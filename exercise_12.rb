# Create a method that merges two hash maps

hash1 = {"name" => "Sumit", "age" => 21, "phone" => "9928763529"}
hash2 = {"address" => "D'Cabin","email" => "mauryasumit222@gmail.com"}

def merges_to_hash(hash_1 , hash_2)
  new_hash = {}
  hash_1.map do |key , value|
    new_hash[key] = value
  end
  hash_2.map do |key , value|
    new_hash[key] = value
  end
  new_hash
end
puts merges_to_hash(hash1,hash2)
