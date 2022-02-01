require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  # our routes would go here

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    p session
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    p session
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :play
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end