class Api::V1::PlacesController < ApplicationController
	def index 
		@places = Place.all
		byebug
		render json: @places
	end
	def show 
		@place = Place.find(params[:id])
		render json: @place
	end

end