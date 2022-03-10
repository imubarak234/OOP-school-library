require 'spec_helper'

describe 'Testing the Student class' do
  before :each do
    @student = Student.new(21, 'nameings', parent_permission: false)
  end

  it 'with the above parameter a Student object should be created' do
    @student.should be_an_instance_of Student
  end

  it 'returns the correct name' do
    @student.name.should eql 'nameings'
  end

  it 'return the correct age' do
    @student.age.should eql 21
  end

  it 'returns the correct permmission' do
    var = @student.permission
    expect(var).to be false
  end

  it 'test the play hooky method' do
    var = @student.play_hooky
    expect(var).to eq "¯\(ツ)/¯"
  end

  it 'testing the is person method' do
    expect(@student.person?).to eq 'Student'
  end
end
