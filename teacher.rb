require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: true)
    @permission = parent_permission
    @specialization = specialization
  end

  attr_reader :parent_permission

  def can_use_services
    true
  end

  def to_string
    "Teacher #{super}"
  end
end
