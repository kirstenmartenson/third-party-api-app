class Api::DealersController < ApplicationController
  def index
    @dealers = HTTP.get("https://api.mercedes-benz.com/dealer/v1/dealers?latitude=50.796964&longitude=12.916570&apikey=#{ENV['API_KEY']}").parse["dealers"]
    render 'index.json.jbuilder'
  end
end
