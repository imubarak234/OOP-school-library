require_relative './book.rb'
require_relative './person.rb'

class Rental
  def initialize(date, person, book)
    @date = date

    @book = book
    book.rental << self

    @person = person
    person.rental << self
  end

  attr_accessor :date
  attr_reader :book, :person
end

mil = Book.new('make fly', 'pro smelly')
mil2 = Book.new('calm all day', 'prof calmy')

next_1 = Person.new(20, "william")
next_2 = Person.new(22, "mikes")

quil = Rental.new('20-19-21',next_1, mil)
quil2 = Rental.new('20-29-30', next_2, mil2)
quil3 = Rental.new('30-49-59', next_1, mil2)
quil4 = Rental.new('90-9r-9w', next_2, mil)

puts mil.rental
puts mil2.rental
