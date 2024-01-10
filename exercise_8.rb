# Create a function that returns the unique elements from an array

input_array = [1, 2, 3, 4, 1, 2, 5, 6, 3]
def unique_elements(array)
  unique_array = []

  array.each do |element|
    if !unique_array.include?(element)
      unique_array << element
    end
  end
  return unique_array
end

result = unique_elements(input_array)
puts result
