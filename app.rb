require 'sinatra/base'

class App < Sinatra::Base
  # renders basketball team form 
  get '/newteam' do
    erb :newteam
  end
  
  # route that responds to a POST request at /team 
  post '/team' do
    @name = params[:name]
    @coach = params[:coach]
    @point_guard = params[:pg]
    @shooting_guard = params[:sg]
    @small_forward = params[:sf]
    @power_forward = params[:pf]
    @center = params[:c]    
    
    erb :team
  end
end