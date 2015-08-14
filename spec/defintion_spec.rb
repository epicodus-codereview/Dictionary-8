require 'rspec'
require 'defintion'

describe Definition do

  before do
  	@test_definition = Definition.new('the meaning of a word')
  end

  describe '#statement' do
	it 'returns the formal statement of the Definition' do
  	  expect(@test_definition.statement).to eq 'the meaning of a word'
    end
  end


end
