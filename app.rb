require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/player.rb'


class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])

    # session[:player_1] = params[:player_1]
    # session[:player_2] = params[:player_2]
    redirect '/play'

  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name

    # @player_1 = session[:player_1]
    # @player_2 = session[:player_2]
    @player_1_points = 60
    @player_2_points = 60
    erb :play

  end

  get '/attack' do
    @player_1 = $player_1.name       #session[:player_1]
    @player_2 = $player_2.name      #session[:player_2]
    erb :attack

end
  run! if app_file == $0
end
