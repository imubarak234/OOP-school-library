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

  attr_accessor :date, :book, :person
end

mil = Book.new('make fly', 'pro smelly')
mil2 = Book.new('calm all day', 'prof calmy')

next1 = Person.new(20, 'william')
next2 = Person.new(22, 'mikes')

Rental.new('20-19-21', next1, mil)
Rental.new('20-29-30', next2, mil2)
Rental.new('30-49-59', next1, mil2)
Rental.new('90-9r-9w', next2, mil)

puts mil.rental
puts mil2.rental
