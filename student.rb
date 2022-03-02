require_relative 'person'

class Student < Person
  def initialize(age, name = 'Unknown', classroom, parent_permission: true)
    super(age, name, parent_permission: true)
    @classroom = classroom
  end

  attr_accessor :classroom

  def classrooms(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
