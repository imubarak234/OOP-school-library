require_relative 'person'
require_relative './classroom'

class Student < Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: true)
    @permission = parent_permission
  end

  attr_accessor :classroom, :name, :age, :permission

  def classrooms(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(self)
  end

  def to_string
    "Student #{super}"
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def is_person
    "Student"
  end

end

#var_ing = Classroom.new('kkkdd')
