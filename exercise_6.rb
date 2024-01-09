# Write a function to find the maximum element in an array.

def find_max_number(number)
  number = number.split(" ")
  count = 0
  number.each do
    count += 1
 end
 puts count
end

print "Enter A String : "
input = gets.chomp.to_s
puts find_max_number(input)
