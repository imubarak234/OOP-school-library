require 'spec_helper'

describe "Testing the Teacher class" do 
  before :each do 
    @Teacher = Teacher.new(31, "specialization", 'namely', parent_permission: false)
  end

  it "with the above parameter a Teacher object should be created" do
    @Teacher.should be_an_instance_of Teacher
  end

  it "returns the correct name" do
    @Teacher.name.should eql "namely"
  end

  it "return the correct age" do
    @Teacher.age.should eql 31
  end

  it "returns the correct permmission" do
    var = @Teacher.permission
    expect(var).to be false
  end

  it "Return the correct specialization" do 
    var = @Teacher.specialization 
    expect(var).to eq "specialization"
  end

  it "testing the is person method" do
    expect(@Teacher.person?).to eq "Teacher"
  end

  it "TEsting the can_use_services method" do 
    expect(@Teacher.can_use_services).to be true
  end
end