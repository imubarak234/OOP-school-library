require_relative 'corrector'

class Person
  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..2000)
    @name = name
    @age = age
    @permission = parent_permission
    @correct = Corrector.new
    @rental = []
    @people = []
  end

  attr_reader :id, :name, :age, :permission, :rental

  def to_string
    "ID: #{@id} Name: #{@name} Age: #{@age} Parental Permission: #{@permission}"
  end

  def validate_name
    @name = @correct.correct_name(@name)
  end

  def names(name)
    @name = name
  end

  def ages(age)
    @age = age
  end

  def can_use_services?
    true if @permission || of_age?
  end

  def add_rental(book, data)
    @rental.push(Rental.new(data, self, book))
  end

  def list_all_people
    @people.each { |n| puts n.to_string }
  end

  def create_a_student
    default_classroom = Classroom.new('default')
    puts 'Age: '
    age = gets.chomp
    puts 'Name: '
    name = gets.chomp
    puts 'Has parent permission? [Y/N]: '
    permission = gets.chomp
    student = if permission.upcase == 'Y'
                Student.new(age, default_classroom, name, parent_permission: true)
              else
                Student.new(age, default_classroom, name, parent_permission: false)
              end
    @people.push(student)
  end
  
  def create_a_teacher
    puts 'Age: '
    age = gets.chomp
    puts 'Name: '
    name = gets.chomp
    puts 'Specilaization'
    specialization = gets.chomp
    teacher = Teacher.new(age, specialization, name)
    @people.push(teacher)
  end
  
  def create_a_person
    puts 'Do you want to create a Student (1) or a Teacher (2)? [Input the number]: '
    var = gets.chomp
    case var
    when '1'
      create_a_student
    when '2'
      create_a_teacher
    end
    puts 'Person created Succesfully'
  end

  private

  def of_age?
    true if @age >= 18
  end
end

# test_ing = Person.new(20, 'mubatrkiisndjfsads')
# puts test_ing.name
# puts test_ing.validate_name
