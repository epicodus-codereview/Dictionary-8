require 'rspec'
require 'definition'

describe Definition do

  before do
  	@test_definition = Definition.new('the meaning of a word')
  end

  describe '#statement' do
	   it 'returns the formal statement of the Definition' do
  	  expect(@test_definition.statement).to eq 'the meaning of a word'
    end

    it 'sets the formal statement of the Definition' do
      @test_definition.statement = 'an edit to a definition'
     expect(@test_definition.statement).to eq 'an edit to a definition'
   end
  end


end
