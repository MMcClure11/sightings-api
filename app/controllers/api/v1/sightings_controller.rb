class Api::V1::SightingsController < ApplicationController

  def index
    sightings = Sighting.all
    render json: sightings, status: 200
  end

end
