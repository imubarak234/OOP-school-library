require 'spec_helper'

describe "Testing the Corrector class" do 
  before :each do 
    @Corrector = Corrector.new
  end

  it "with the above parameter a Corrector object should be created" do
    @Corrector.should be_an_instance_of Corrector
  end

  it "test the Corrector method" do
    var = "mikel"

    @Corrector.correct_name(var).should eql "Mikel"
  end

  it "test the Corrector method" do
    var = "footerNotinglly"

    @Corrector.correct_name(var).should eql "Footernoti"
  end


end