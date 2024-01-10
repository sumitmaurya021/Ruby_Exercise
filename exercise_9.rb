# Write a method to rotate the elements of an array to the left by a given number of positions.


def rotate_array_elements(array, n)
  n.times do
    array.push(array.shift)
  end
  array
end

array1 =  [1,2,3,4,5,6]

puts rotate_array_elements(array1, 3)
