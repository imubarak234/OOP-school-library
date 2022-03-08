require_relative './book'

class Bookmain
  def list_all_books(books)
    books.each { |n| puts n.to_string }
  end

  def user_details
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp

    [title, author]
  end

  def create_a_book(books)
    title, author = user_details
    book = Book.new(title, author)
    books.push(book)
    puts 'Book created Successfully'
  end
end
