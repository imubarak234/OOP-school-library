class Save

  def save_to_book(books)
    books_json = JSON.generate(books)
    File.write('./books.json', JSON.dump(books_json))
  end

  def save_to_rentals(rentals)
    rentals_json = JSON.generate(rentals)
    File.write('./rentals.json', JSON.dump(rentals_json))
  end

  def save_to_people(people)
    people_json = JSON.generate(people)
    File.write('./people.json', JSON.dump(people_json))
  end

  def save(books, people, rentals)
    save_to_book(books)
    save_to_rentals(rentals)
    save_to_people(people)
  end

end