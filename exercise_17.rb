# Define a Person class with attributes for name and age

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{@name} and I am #{@age} years old."
  end
end

person = Person.new("Sumit", 21)
puts person.introduce
