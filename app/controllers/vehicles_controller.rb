class VehiclesController < ApplicationController
  def index
    @vehicles = Unirest.get("localhost:3000/api/v2/vehicles.json").body
  end

  def new
    
  end

  def create
    vehicle = Unirest.post("localhost:3000/api/v2/vehicles.json?vin=#{params[:vin]}&manufacture=#{params[:manufacture]}",
                            headers:{ "Accept" => "application/json" }
                            ).body
    redirect_to "/vehicles/#{vehicle["id"]}"
  end

  def show
    @vehicle = Unirest.get("localhost:3000/api/v2//vehicles/#{params[:id]}.json").body
  end
end
