require 'sinatra/base'

class App < Sinatra::Base

    get '/newteam' do 
        erb :newteam # get form from newteam.erb
    end

    post '/team' do # then show form input data from ^ here
        @name = params[:name]
        @coach = params[:coach]
        @pg = params[:pg]
        @sg = params[:sg]
        @pf = params[:pf]
        @sf = params[:sf]
        @c = params[:c]

        erb :team
    end

end
