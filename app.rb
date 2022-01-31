require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'How are you?'
end

get '/secret' do
  'This is a secret message'
end

get '/random-cat' do
  @name = ["Amigos", "Mistys", "Almonds"].sample
  erb :random_cat
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb :named_cat
end