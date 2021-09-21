class SightingsController < ApplicationController

  def index
    sightings = Sighting.all 
    redner json: SightingSerializer.new(sightings)
  end

  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
    # render json: sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
  end
end
