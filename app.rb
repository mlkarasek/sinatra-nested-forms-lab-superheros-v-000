require './environment'
require 'sinatra/base'

class App < Sinatra::Base


    get '/' do
      erb :root
    end

    post '/' do
    end 
