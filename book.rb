class Book
  def initialize(title = "default", author = "default")
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(person, data)
    @rental.push(Rental.new(data, person, self))
  end

  def to_string
    "Author: #{@author} Title: #{@title}"
  end

  attr_accessor :author, :title
  attr_reader :rental
end
