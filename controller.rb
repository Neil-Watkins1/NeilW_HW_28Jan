require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/game')
also_reload('./models/*')

get '/welcome' do
  erb(:welcome)
end

get '/result_check/:item1/:item2' do
  game = Game.new(params[:item1], params[:item2])
  @game = game.result_check()
  erb(:result)
end
