class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(person, data)
    @rental.push(Rental.new(data, person, self))
  end

  attr_accessor :author, :title
  attr_reader :rental
end
