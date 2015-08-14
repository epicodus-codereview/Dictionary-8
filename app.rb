require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'
also_reload('./lib/**/*.rb')


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
  statement = params.fetch('definition')
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

get('/add_definition/:id') do
  id = params.fetch('id').to_i
  @word = Word.find(id)
  erb :add_definition
end

post('/word/:id') do
  id = params.fetch('id').to_i
  @word = Word.find(id)
  statement = params.fetch('definition')
  definition = Definition.new(statement)
  @word.add_definition(definition)
  erb :word
end
