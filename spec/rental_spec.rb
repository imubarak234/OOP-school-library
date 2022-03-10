require 'spec_helper'

describe 'Testing the Rental class' do
  before :each do
    @person = Person.new(32, 'name', parent_permission: true)
    @book = Book.new('Title', 'Author')
    @rental = Rental.new('02-12-2022', @person, @book)
  end
  it 'with the above parameter a rental object should be created' do
    @rental.should be_an_instance_of Rental
  end
  it 'returns the correct date' do
    @rental.date.should eql '02-12-2022'
  end
end
