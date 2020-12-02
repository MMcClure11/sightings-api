class Api::V1::SightingsController < ApplicationController
  before_action :set_sighting, only: [:update, :destroy]

  def index
    sightings = Sighting.all
    render json: sightings, status: 200
  end

  def create
    sighting = current_user.sightings.build(sighting_params)
    sighting.category = Category.find_by(name: params[:category])
    sighting.location = Location.find_or_create_by(city: params[:city], region: params[:region], country: params[:country])
    if sighting.save 
      render json: sighting, status: 200
    else
      error_resp = {
        error: sighting.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def update
    @sighting.category = Category.find_by(name: params[:category])
    @sighting.location = Location.find_or_create_by(city: params[:city], region: params[:region], country: params[:country])
    if @sighting.update(sighting_params)
      render json: @sighting, status: 200
    else
      error_resp = {
        error: @sighting.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def destroy
    @sighting.destroy
    render json: {notice: 'Sighting destroyed'}, status: 200
  end

  private

  def set_sighting
    @sighting = Sighting.find_by(id: params[:id])
  end

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
