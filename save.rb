require 'json'

class Save
  def save_to_book(books)
    arr = []
    books.each { |n| arr.push([n.title, n.author]) }
    books_json = JSON.generate(arr)
    File.write('./books.json', books_json)
  end

  def save_to_rentals(rentals)
    arr = []
    rentals.each { |n| arr.push([n[0].date, n[0].person.name, n[0].book.title]) }
    rentals_json = JSON.generate(arr)
    File.write('./rentals.json', rentals_json)
  end

  def save_to_people(people)
    arr = []
    people.each do |n|
      if n.person? == 'Student'
        arr.push([n.class, n.age, n.name, n.permission])
      else
        arr.push([n.class, n.age, n.name, n.specialization])
      end
    end
    people_json = JSON.generate(arr)
    File.write('./people.json', people_json)
  end

  def save(books, people, rentals)
    save_to_book(books)
    save_to_rentals(rentals)
    save_to_people(people)
  end
end
