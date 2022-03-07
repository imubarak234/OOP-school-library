class Person_main
  @people = []
  
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
end