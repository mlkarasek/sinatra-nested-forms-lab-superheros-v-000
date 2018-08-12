require './environment'
require 'sinatra/base'

class App < Sinatra::Base

set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :superhero
    end

    post '/teams' do

        @team = Team.new(params[:team])
        params[:team][:members].each do |details|
            Superhero.new(details)
        end

        @members = Superhero.all
        @members

        erb :team
    end
end
