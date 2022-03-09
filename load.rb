require_relative './teacher'
require_relative './student'
require_relative './book'
require_relative './rental'
require 'json'

class Load 

  def load_from_books(books)
    if File.zero?("./books.json") == false
      file_ing = File.read('./books.json')
      var = JSON.parse(file_ing)
      var.each { |n| new_book =  Book.new(n[0], n[1]) 
      books.push(new_book)
    }
    end
  end

  def load_from_people(people)
    if File.zero?("./people.json") == false
      file_ing = File.read('./people.json')
      var = JSON.parse(file_ing)
      var.each { |n| if n[0] == "Student"
      if n[3]
        new_student = Student.new(n[1], n[2], parent_permission: true)
      else
        new_student = Student.new(n[1], n[2], parent_permission: false)
      end
      people.push(new_student)
    else
      new_teacher = Teacher.new(n[1], n[3], n[2])
      people.push(new_teacher)
    end
    }
    end
  end

  def find_book(books, args)
    books.each { |n|
    if n.title == args
      return n
      break
    end
  }
  end

  def find_person(people, args)
    people.each { |n| 
    if n.name == args
      return n
      break
    end
  }
  end

  def find_person_id(people, args)
    people.each { |n|
    if n.name == args
      return n.id
      break
    end
  }
  end

  def load_from_rentals(books, people, rentals)
    if File.zero?("./rentals.json") == false
      file_ing = File.read('./rentals.json')
      var = JSON.parse(file_ing)
      var.each { |n| new_rental = Rental.new(n[0], find_person(people, n[1]), find_book(books, n[2])) 
      rentals.push([new_rental, find_person_id(people, n[1])])
    }
    end
  end

  def load(books, people, rentals)
    load_from_books(books)
    load_from_people(people)
    load_from_rentals(books, people, rentals)
  end

end
