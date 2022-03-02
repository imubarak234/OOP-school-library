require_relative './student.rb'

class Classroom

  def initialize(label)
    @label = label
    @student = []
  end

  def add_student(student)
    @student.push(student)
    student.classroom = self
  end
  attr_accessor :label
  attr_reader :student
end

#classroom, age, name = 'Unknown', parent_permission: true
class01 = Classroom.new('Firsts')
mark = Student.new(class01, 23, 'Naira')
queen = Student.new(class01, 30, 'Milk')

puts mark.classroom
