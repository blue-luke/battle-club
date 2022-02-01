require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  # our routes would go here

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)

    redirect '/names'
  end

  post '/deduct_player2_hp' do
    $game.attack($game.player2)
    redirect '/names'
  end

  post '/deduct_player1_hp' do
    $game.attack($game.player1)
    redirect '/names'
  end

  get '/names' do
    @game = $game
    # @player1 = $game.player1
    # @player2 = $game.player2
    erb :play
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end