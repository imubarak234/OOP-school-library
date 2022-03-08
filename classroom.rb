require_relative './student'

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
