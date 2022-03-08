require_relative './rental'

class Rentalmain

  def input_user_books(books)
    puts 'Select a book from the following list of books'
    books.each_with_index { |n, idx| puts "#{idx}) #{n.to_string}" }
    var = gets.chomp
    book = books[var.to_i]
    book
  end

  def input_user_person(people)
    puts 'Select a person from the following list by number'
    people.each_with_index { |n, idx| puts "#{idx}) #{n.to_string}" }
    vars = gets.chomp
    person = people[vars.to_i]
  end

  def input_user_date
    puts 'Enter a date'
    date = gets.chomp
  end

  def create_a_rental(books, people, rental)
    book = input_user_books(books)
    person = input_user_person(people)
    date = input_user_date

    rent = Rental.new(date, person, book)
    ans = [rent, person.id]
    rental.push(ans)
    puts 'Booked Rented Succesfully'
  end

  def list_rental_by_id(rental)
    print 'Enter ID: '
    var = gets.chomp
    rental.each do |n|
      puts n[0].to_string if n[1] == var.to_i
    end
  end
end
