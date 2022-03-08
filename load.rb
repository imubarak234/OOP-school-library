
class Load 

  def load_from_books(books)
    file_ing = File.read('./books.json').split
    books = JSON.parse(file_ing)
  end

  def load_from_people(people)
    file_ing = File.read('/people.json').split
    people = JSON.parse(file_ing)
  end

  def load_from_rentals(rentals)
    file_ing = File.read('./rentals.json').split
    rentals = JSON.parse(file_ing)
  end

  def load(books, people, rentals)
    load_from_books(books)
    load_from_people(people)
    load_from_rentals(rentals)
  end

end