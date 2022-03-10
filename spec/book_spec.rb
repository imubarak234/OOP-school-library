require 'spec_helper'

describe "Testing the Book class" do 
  before :each do 
    @book = Book.new("Title", "Author")
    @person = Person.new('23')
  end

  it "with the above parameter a Book object should be created" do
    @book.should be_an_instance_of Book
  end

  it "returns the correct title" do
    @book.title.should eql "Title"
  end

  it "return the correct Author" do
    @book.author.should eql "Author"
  end

end