# Implement a Rectangle class with methods to calculate its area and perimeter

class Ractangle
  def initialize(length, width)
    @length = length
    @width = width
  end
  def area
    @length * @width
  end
  def perimeter
    2 * (@length + @width)
  end
end

print "Enter Your Length : "
length = gets.chomp.to_f
print "Enter Your Width : "
width = gets.chomp.to_f

ractangle = Ractangle.new(length,width)

puts "Area #{ractangle.area.round(2)}"
puts "Perimeter #{ractangle.perimeter.round(2)}"

