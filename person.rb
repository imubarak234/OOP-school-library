require_relative 'corrector'

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

  private

  def of_age?
    true if @age >= 18
  end
end

# test_ing = Person.new(20, 'mubatrkiisndjfsads')
# puts test_ing.name
# puts test_ing.validate_name
