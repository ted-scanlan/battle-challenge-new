require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'


class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @nameone = params[:nameone]
    @nametwo = params[:nametwo]
    erb :play
  end

  run! if app_file == $0
end
