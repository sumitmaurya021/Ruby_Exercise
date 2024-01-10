# Create a method that returns the common elements between two arrays

print "Enter Array1 Numbers : "
number = gets.chomp.chars
array1 = number
print "Enter Array2 Numbers : "
number = gets.chomp.chars
array2 = number

def return_the_common_elements(arra_1 , arra_2)
      result = []
      result << (arra_1 & arra_2)
      return result
end
print return_the_common_elements(array1 , array2)
