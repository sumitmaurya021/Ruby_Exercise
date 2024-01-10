# Implement a function that checks if two arrays are equal (contain the same elements in the same order).

print "Enter Array1 Numbers : "
number = gets.chomp.chars
array1 = number
print "Enter Array2 Numbers : "
number = gets.chomp.chars
array2 = number

def check_two_array_are_equal(arra_1 , arra_2)
    if arra_1 == arra_2
      print "Array1 And Array2 Same"
    else
      print "Array1 And Array2 Not Same"
    end
end
print check_two_array_are_equal(array1 , array2)
