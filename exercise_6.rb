# Write a function to find the maximum element in an array.

num = [10,20,40,100]
def find_max_number(arr)
  max = arr[0]
  arr.each do |value|
    if value > max
      max = value
    end
  end
  max
end

puts find_max_number(num)
