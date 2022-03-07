require_relative './teacher'
require_relative './student'
require_relative './book'
require_relative './rental'
require_relative './classroom'

@books = []
@people = []
@rentals = []

class list_books
  def list_all_books
    @books.each { |n| puts n.to_string }
  end
end

class list_people 
  def list_all_people
    @people.each { |n| puts n.to_string }
  end
end

class create_person
  def create_a_student
    default_classroom = Classroom.new('default')
    puts 'Age: '
    age = gets.chomp
    puts 'Name: '
    name = gets.chomp
    puts 'Has parent permission? [Y/N]: '
    permission = gets.chomp
    student = if permission.upcase == 'Y'
                Student.new(age, default_classroom, name, parent_permission: true)
              else
                Student.new(age, default_classroom, name, parent_permission: false)
              end
    @people.push(student)
  end
  
  def create_a_teacher
    puts 'Age: '
    age = gets.chomp
    puts 'Name: '
    name = gets.chomp
    puts 'Specilaization'
    specialization = gets.chomp
    teacher = Teacher.new(age, specialization, name)
    @people.push(teacher)
  end
  
  def create_a_person
    puts 'Do you want to create a Student (1) or a Teacher (2)? [Input the number]: '
    var = gets.chomp
    case var
    when '1'
      create_a_student
    when '2'
      create_a_teacher
    end
    puts 'Person created Succesfully'
  end
end

class create_book 
  def create_a_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created Successfully'
  end
end

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
