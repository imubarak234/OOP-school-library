require_relative 'person'

class Student < Person
  def initialize(classroom, name = "Unknown", parent_permission = true, age)
    super(name, parent_permission, age)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

end