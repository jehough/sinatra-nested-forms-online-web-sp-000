require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/pirates' do
      @pirates = Pirate.all
      erb :'pirates/index'
    end

    get '/' do
      erb :root
    end

    get '/new' do
      erb 'pirates/new'.to_sym
    end

    post '/pirates' do
      @pirate = Pirate.new
      @pirate.name = params["pirate"]["name"]
      params["pirate"]["ships"].each do |details|
        ship = Ship.new
        ship.name = details["name"]
      end
      @ships= Ship.all
      erb 'pirates/index'.to_sym
    end
  end
end
