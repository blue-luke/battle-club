require 'sinatra'
require 'sinatra/reloader'

details = []

get '/' do
  erb :index
end

get '/form' do
  details.append(params[:todo])
  details.join("\n")
end

