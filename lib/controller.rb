# require 'bundler' - Cette ligne 
# Bundler.require - et cette ligne sont également dans config.ru donc plus nécessaires
# require 'sinatra'

class ApplicationController < Sinatra::Base
  get '/' do
    # "<html><head><title>The Gossip Project</title></head><body><h1>Mon gossip THP: en avant les potins!!!</h1></body></html>"
    erb :index
  end
end

class Gossip
  
end
# run! if app_file == $0  #Cette ligne est remplacée par une autre dans config.ru
