require_relative './book'

class Book_main
  def initialize
    @books = []
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
end