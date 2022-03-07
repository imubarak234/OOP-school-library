class Rental_main
  @rentals = []
  
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
end