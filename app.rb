require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'

get('/') do
  @words = Word.all
  erb :index
end

get('/add_word') do
  @words = Word.all
  erb :add_word
end

post('/') do
  @words = Word.all

  word_name = params.fetch('word_name')
  statement = params.fetch('definition1')
  definition = Definition.new(statement)
  word = Word.new({name: word_name, definitions: [definition]})
  word.save
  erb :index
end

get('/word/:id') do
  id = params.fetch('id').to_i
  @word = Word.find(id)
  erb :word
end
