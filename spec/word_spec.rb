require 'rspec'
require 'word'
require 'definition'

describe Word do
  before do
    @test_word = Word.new({name: 'word'})
    @test_definition1 = Definition.new('the meaning of a word')
  end

  describe '#definitions' do
    it 'returns an array of definitions of a Word object' do
      expect(@test_word.definitions).to eq []
    end
  end

  describe '#name' do
    it 'returns the name of the Word object' do
      expect(@test_word.name).to eq 'word'
    end
  end

end
