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

post '/named-cat' do
  p params
  @name = params[:name]
  erb :named_cat
end

get '/name-this-cat' do
  erb :name_this_cat
end