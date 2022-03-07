require_relative './teacher'
require_relative './student'
require_relative './book'
require_relative './rental'
require_relative './classroom'


@rentals = []


class creat_rental 
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
end

class List_rental
  def list_rental_by_id
    print 'Enter ID: '
    var = gets.chomp
    @rentals.each do |n|
      puts n[0].to_string if n[1] == var.to_i
    end
  end
end

class Option
  def option(args)
    case args
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      create_a_person
    when '4'
      create_a_book
    when '5'
      create_a_rental
    when '6'
      list_rental_by_id
    end
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

# puts "#{$instance}"
