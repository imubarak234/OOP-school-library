require_relative 'person'

class Teacher < Person
  def initialize(specialization, name = "Unknown", parent_permission = true, age)
    super(name, parent_permission, age)
    @specialization = specialization
  end

  def can_use_services 
    true
  end

end