require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    # @player_1_points = $game.player_1.hit_points
    # @player_2_points = $game.player_2.hit_points
    erb :play
  end

  get '/play-two' do
    @game = $game
    erb :play_two
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)

    #@player_1.attack(@player_2)
    # @player1points = @player_1.hit_points
    #@player_2.deduct    #session[:player_2]
    erb :attack
  end

  get '/attack-two' do
    @game = $game
    @game.attack(@game.player_1)
    erb :attack_two
  end

  run! if app_file == $0
end
