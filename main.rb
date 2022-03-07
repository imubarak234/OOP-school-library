require_relative './teacher'
require_relative './student'
require_relative './book'
require_relative './rental'
require_relative './classroom'

default_book = Book.new
default_person = Person.new('20')
defalut_rental = Rental.new

  def option(args)
    case args
    when '1'
      default_book.list_all_books
    when '2'
      default_person.list_all_people
    when '3'
      default_person.create_a_person
    when '4'
      default_book.create_a_book
    when '5'
      defalut_rental.create_a_rental
    when '6'
      defalut_rental.list_rental_by_id
    end
  end

def menu
  puts 'Please choose an option by number!'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all reantals for a given id'
  puts '7 - Exit'
end



def main
  var = 0
  puts 'Welcome to The School Library App!'
  while var != '7'
    menu
    var = gets.chomp
    option(var)
  end
  puts 'Thanks for using this App!'
end

main
