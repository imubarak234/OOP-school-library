class Person
  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..2000)
    @name = name
    @age = age
    @permission = parent_permission
  end

  attr_reader :id, :name, :age, :permission

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
