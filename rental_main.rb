require_relative './rental'

class Rentalmain
  def create_a_rental(books, people, rental)
    puts 'Select a book from the following list of books'
    books.each_with_index { |n, idx| puts "#{idx}) #{n.to_string}" }
    var = gets.chomp
    book = books[var.to_i]
    puts 'Select a person from the following list by number'
    people.each_with_index { |n, idx| puts "#{idx}) #{n.to_string}" }
    vars = gets.chomp
    person = people[vars.to_i]
    puts 'Enter a date'
    date = gets.chomp
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
