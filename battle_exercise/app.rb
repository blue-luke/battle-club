require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # our routes would go here

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])

    redirect '/names'
  end

  post '/deduct_player2_hp' do
    $player2.get_attacked
    redirect '/names'
  end

  post '/deduct_player1_hp' do
    $player1.get_attacked
    redirect '/names'
  end

  get '/names' do
    @player1 = $player1
    @player2 = $player2
    erb :play
  end
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end