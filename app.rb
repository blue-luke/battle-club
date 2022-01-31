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
  erb :cat
end

get '/named-cat' do
  @name = params[:name]
  erb :cat
end