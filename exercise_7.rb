# Implement a method to calculate the sum of all elements in an array.


array1 = [1,2,3,4,5,6,7]

def sum_of_element(array1)
  sum = 0
  for num in 0...array1[-1]
    sum += array1[num]
  end
  print sum
end
sum_of_element(array1)
