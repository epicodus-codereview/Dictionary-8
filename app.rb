require 'sinatra'
require 'sinatra/reloader'
require './lib/word'
require './lib/definition'

get('/') do
@words = Word.all
erb :index
end
