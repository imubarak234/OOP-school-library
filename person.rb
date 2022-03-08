require_relative 'corrector'
# require_relative './teacher'
# require_relative './student'

class Person
  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..2000)
    @name = name
    @age = age
    @permission = parent_permission
    @correct = Corrector.new
    @rental = []
  end

  attr_reader :id, :name, :age, :permission, :rental

  def to_string
    "ID: #{@id} Name: #{@name} Age: #{@age} Parental Permission: #{@permission}"
  end

  def validate_name
    @name = @correct.correct_name(@name)
  end

  def names(name)
    @name = name
  end

  def ages(age)
    @age = age
  end

  def can_use_services?
    true if @permission || of_age?
  end

  def add_rental(book, data)
    @rental.push(Rental.new(data, self, book))
  end

  private

  def of_age?
    true if @age >= 18
  end
end
