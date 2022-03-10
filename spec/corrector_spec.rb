require 'spec_helper'

describe 'Testing the Corrector class' do
  before :each do
    @corrector = Corrector.new
  end

  it 'with the above parameter a Corrector object should be created' do
    @corrector.should be_an_instance_of Corrector
  end

  it 'test the Corrector method' do
    var = 'mikel'

    @corrector.correct_name(var).should eql 'Mikel'
  end

  it 'test the Corrector method' do
    var = 'footerNotinglly'

    @corrector.correct_name(var).should eql 'Footernoti'
  end
end
