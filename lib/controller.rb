# require 'bundler' - Cette ligne 
# Bundler.require - et cette ligne sont également dans config.ru donc plus nécessaires
# require 'sinatra'

require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    # "<html><head><title>The Gossip Project</title></head><body><h1>Mon gossip THP: en avant les potins!!!</h1></body></html>"
    erb :index
  end

  get '/gossips/new/' do
    puts "Et là si je mets un put, on voit dans le terminal que le lien vers le formulaire /gossips/new/ fonctionne"
    erb :new_gossips
  end

  post '/gossips/new/' do
    puts "Et là si je mets un put, on voit dans le terminal que la route est créée pour le POST"
    Gossip.new(params["gossip_author"], params["gossip_content"]).save

    redirect '/'
  end

end

# run! if app_file == $0  #Cette ligne est remplacée par une autre dans config.ru
