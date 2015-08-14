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
  definition1 = params.fetch('definition1')
  word = Word.new({name: word_name, definitions: [definition1]})
  word.save
  erb :index
end
