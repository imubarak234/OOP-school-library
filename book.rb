class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
    @books = []
  end

  def add_rental(person, data)
    @rental.push(Rental.new(data, person, self))
  end

  def to_string
    "Author: #{@author} Title: #{@title}"
  end

  def list_all_books
    @books.each { |n| puts n.to_string }
  end

  def create_a_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created Successfully'
  end

  attr_accessor :author, :title
  attr_reader :rental
end
