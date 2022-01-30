require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'How are you?'
end

get '/secret' do
  'This is a secret message'
end

get '/cat' do
  erb :cat
end