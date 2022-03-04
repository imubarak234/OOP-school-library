require_relative './teacher'
require_relative './student'
require_relative './book'
require_relative './rental'
require_relative './classroom'

$books = []
$people = [] 
$rentals = []

def list_all_books
  puts $books.each { |n| puts n.to_string }
end

def list_all_people 
  $people.each { |n| puts n.to_string }
end

def create_a_person
  default_classroom = Classroom.new('default')
  puts "Do you want to create a Student (1) or a Teacher (2)? [Input the number]: "
  var = gets.chomp
 if var == "1"
  puts "Age: "
  age = gets.chomp
  puts "Name: "
  name = gets.chomp
  puts "Has parent permission? [Y/N]: "
  permission = gets.chomp
  if permission.upcase == 'Y'
    student = Student.new(age, default_classroom, name, parent_permission: true)
  else
    student = Student.new(age, default_classroom, name, parent_permission: false)
  end
  $people.push(student)
 elsif var == "2"
  puts "Age: "
  age = gets.chomp
  puts "Name: "
  name = gets.chomp
  puts "Specilaization"
  specialization = gets.chomp
  teacher = Teacher.new(age, specialization, name)
  $people.push(teacher)
 end
  puts "Person created Succesfully"
end

def create_a_book
  print "Title"
  title = gets.chomp
  print "Author"
  author = gets.chomp
  book = Book.new(title, author)
  @books.push(book)
  puts "Book created Successfully"
end

def create_a_rental
  puts "Select a book from the following list of books"
  @books.each_with_index { |n, idx| puts "#{idx}) #{n.to_string}" }
  var = gets.chomp
  book = @books[var]
  puts "Select a person from the following list by number"
  @people.each_with_index { |n, idx| puts "#{idx}) #{n.to_string}" }
  vars = gets.chomp
  person = @people[vars]
  puts "Enter a date"
  date = gets.chomp
  rent = Rental.new(date, person, book)
  ans = [rent, person.id]
  @rentals.push(ans)
  puts "Booked Rented Succesfully"
end

def list_rental_by_id
  @rentals.each { |n| puts n.to_string }
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
   if var == "1"
     list_all_books

   elsif var == "2"
    list_all_people

   elsif var == "3"
    create_a_person

   elsif var == "4"
    create_a_book

   elsif var == "5"
    create_a_rental

   elsif var == "6"
    list_rental_by_id
   end
  end
  puts "ended"
end

main()

#puts "#{$instance}"