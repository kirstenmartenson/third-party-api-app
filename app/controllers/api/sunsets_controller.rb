class Api::SunsetsController < ApplicationController
  def index
    @sunsets = HTTP.get("https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400").parse["results"]
    render 'index.json.jbuilder'
  end
end
