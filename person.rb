class Person
  def initialize(name = "unknown", parent_permission = true, age)
    @id = Random.rand(1..2000)
    @name = name
    @age = age
    @permission = parent_permission
  end

  def id 
    @id
  end

  def name
    @name 
  end

  def age 
    @age
  end

  def name(name)
    @name = name
  end

  def age(age)
    @age = age
  end
end