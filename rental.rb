require_relative './book'
require_relative './person'

class Rental
  def initialize(date, person, book)
    @date = date

    @book = book
    book.rental << self

    @person = person
    person.rental << self
  end

  def to_string
    puts "Date: #{@date}, Book \"#{@book.title}\" by #{@book.author}"
  end

  attr_accessor :date, :book, :person
end
