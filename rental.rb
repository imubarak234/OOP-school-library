class Rental
  def initialize(date, person, book)
    @date = date

    @book = book
    book.rental << self

    @person = person
    person.rental << self
  end

  attr_accessor :date
  attr_reader :book, :person
end