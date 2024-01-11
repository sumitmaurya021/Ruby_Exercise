# Create a Book class with methods to set and get its title, author, and publication year
class Book
  def initialize(title,author,publication)
    @title = title
    @author = author
    @publication = publication
  end
  def title               # This is a getter method
    @title
  end
  def author
    @author
  end
  def publication
    @publication
  end
  def title=(value)       # This is a setter method
    @title = value
  end
  def author=(value)
    @author = value
  end
  def publication=(value)
    @publication = value
  end
end


book = Book.new("Off The Record","MADELEINE WESTERHOUT",2015)

puts
p book.title
p book.author
p book.publication
puts
book.title = "The Black Widow"
book.author = "Marvel"
book.publication = 2021

p book.title
p book.author
p book.publication
