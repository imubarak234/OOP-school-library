require_relative './book'
require_relative './person'

class Rental
  def initialize(date, person, book)
    @date = date

    @book = book
    book.rental << self

    @person = person
    person.rental << self

    @rentals = []
  end

  def to_string
    puts "Date: #{@date}, Book \"#{@book.title}\" by #{@book.author}"
  end

  def create_a_rental
    puts 'Select a book from the following list of books'
    @books.each_with_index { |n, idx| puts "#{idx}) #{n.to_string}" }
    var = gets.chomp
    book = @books[var.to_i]
    puts 'Select a person from the following list by number'
    @people.each_with_index { |n, idx| puts "#{idx}) #{n.to_string}" }
    vars = gets.chomp
    person = @people[vars.to_i]
    puts 'Enter a date'
    date = gets.chomp
    rent = Rental.new(date, person, book)
    ans = [rent, person.id]
    @rentals.push(ans)
    puts 'Booked Rented Succesfully'
  end

  def list_rental_by_id
    print 'Enter ID: '
    var = gets.chomp
    @rentals.each do |n|
      puts n[0].to_string if n[1] == var.to_i
    end
  end

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
