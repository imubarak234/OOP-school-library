require 'spec_helper'

describe 'Testing the Classrom class' do
  before :each do
    @classroom = Classroom.new('Label')
  end

  it 'with the above parameter a Classroom object should be created' do
    @classroom.should be_an_instance_of Classroom
  end

  it 'returns the correct label' do
    @classroom.label.should eql 'Label'
  end
end
