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
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    session[:player1_hp] = 100
    session[:player2_hp] = 100
    redirect '/names'
  end

  post '/deduct_player2_hp' do
    session[:player2_hp] -= 10
    redirect '/names'
  end

  get '/names' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1_hp = session[:player1_hp]
    @player2_hp = session[:player2_hp]
    erb :play
  end
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end