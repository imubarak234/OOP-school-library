require_relative './person'
require_relative './rental'

class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(person, data)
    var = Rental.new(data, person, self)
    @rental.push(var)
  end

  def to_string
    "Author: #{@author} Title: #{@title}"
  end

  attr_accessor :author, :title
  attr_reader :rental
end
