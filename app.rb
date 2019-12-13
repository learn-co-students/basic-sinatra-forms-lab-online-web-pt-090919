require 'sinatra/base'

class App < Sinatra::Base
  # renders basketball team form 
  get '/newteam' do
    erb :newteam
  end
  
  # route that responds to a POST request at /team 
  post '/team' do
    @team = params[:team_name]
    @coach = params[:coach]
    @point_guard = params[:point_guard]
    @shooting_guard = params[:shooting_guard]
    @small_forward = params[:small_forward]
    @power_forward = params[:power_forward]
    @center = params[:center]
    
    erb :team
  end
end
