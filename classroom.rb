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
mark = Student.new(23, 'Naira', class01)
queen = Student.new(30, 'Milk', class01)

puts mark.classroom

class01.add_student(mark)
class01.add_student(queen)

puts class01.student