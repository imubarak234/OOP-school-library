require 'spec_helper'

describe 'Testing the Person class' do
  before :each do
    @person = Person.new(32, 'name', parent_permission: true)
    # @person = Person.new('23')
  end

  it 'with the above parameter a Person object should be created' do
    @person.should be_an_instance_of Person
  end

  it 'returns the correct name' do
    @person.name.should eql 'name'
  end

  it 'return the correct age' do
    @person.age.should eql 32
  end

  it 'returns the correct permmission' do
    var = @person.permission
    expect(var).to be true
  end

  it 'test the validate name method' do
    @person.validate_name
    @person.name.should eql 'Name'
  end

  it 'testing the can use rental' do
    expect(@person.can_use_services?).to be true
  end
end
