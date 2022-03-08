require_relative './teacher'
require_relative './student'

class Personmain
  def list_all_people(people)
    people.each { |n| puts n.to_string }
  end

  def create_a_person(people)
    puts 'Do you want to create a Student (1) or a Teacher (2)? [Input the number]: '
    var = gets.chomp
    case var
    when '1'
      create_a_student(people)
    when '2'
      create_a_teacher(people)
    end
    puts 'Person created Succesfully'
  end

  def user_name_inputs 
    puts 'Age: '
    age = gets.chomp
    puts 'Name: '
    name = gets.chomp

    [age, name]
  end

  def user_permissions_inputs
    default_classroom = Classroom.new('default')
    age, name = user_name_inputs
    puts 'Has parent permission? [Y/N]: '
    permission = gets.chomp
    student = if permission.upcase == 'Y'
      Student.new(age, default_classroom, name, parent_permission: true)
    else
      Student.new(age, default_classroom, name, parent_permission: false)
    end
    student
  end

  def create_a_student(people)
    student = user_permissions_inputs
    people.push(student)
  end

  def user_input_special
    puts 'Specilaization'
    specialization = gets.chomp
    specialization
  end

  def create_a_teacher(people)
    age, name = user_name_inputs
    specialization = user_input_special
    teacher = Teacher.new(age, specialization, name)
    people.push(teacher)
  end
end
