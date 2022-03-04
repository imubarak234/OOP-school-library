require_relative './teacher'
require_relative './student'
require_relative './book'
require_relative './rental'

$books = []
$people = []

def list_all_books
  puts $books
end

def list_all_people 
  
end

def create_a_teacher(age, specialization, name)
  teach = Teacher.new(age, specialization, name)
end

def create_a_student(age, classroom, name)
  student = Student.new(age, classroom, name)
end

def create_a_book(title, author)

  book = Book.new(title, author)
end

def create_a_rental(date, person, book)
  rent = Rental.new(date, person, book)
end

def list_rental_by_id(id)
end

def menu 
  puts "1 - List all books"
  puts "2 - List all people"
  puts "3 - Create a person"
  puts "4 - Create a book"
  puts "5 - Create a rental"
  puts "6 - List all reantals for a given id"
  puts "7 - Exit"
end

def main 
  puts "Welcome to the School Library App!"
  var = 0
  while var != "7"
    menu
    var = gets.chomp
    puts 'var ' + var
  end
  puts "ended"
end

#main()

#puts "#{$instance}"