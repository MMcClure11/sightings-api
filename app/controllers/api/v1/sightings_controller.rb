class Api::V1::SightingsController < ApplicationController

  def index
    sightings = Sighting.all
    render json: sightings, status: 200
  end

  def create
    byebug
    # category = Category.find_by(name: params[:category])
    sighting = current_user.sightings.build(sighting_params)
    sighting.category = Category.find_by(name: params[:category])
    if sighting.save 
      render json: sighting, status: 200
    else
      error_resp = {
        error: sighting.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private

  def sighting_params
    params.require(:sighting).permit(
      :image,
      :identified,
      :common_name,
      :scientific_name,
      :date,
      :notes
    )
  end
end
