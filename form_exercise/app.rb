require 'sinatra'
require 'sinatra/reloader'

details = []

get '/' do
  erb :index
end

post '/form' do
  params.to_s
end

get '/results' do
  erb :results
end

