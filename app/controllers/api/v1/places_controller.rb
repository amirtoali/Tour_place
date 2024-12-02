class Api::V1::PlacesController < ApplicationController
	before_action :set_place, only: [:show,  :update, :destroy]
	def index 
		@places = Place.includes(:images)
		render json: @places.map { |place| place.as_json(include: { images:{only: %i[id url]}})}
	end
	def show 
	 render json: @place.as_json(include: { images:{only: %i[id url]}})
	end
	def update
	 if @place.update(place_params)
      render json: @place
	 end
	end
	def create
	 @place = Place.create(place_params)
		if @place.save
		  render json: @place
		 end
	end
	def destroy
	 if @place.destroy
	 	render json: {status: "success", messages:"destroy is successfully"}
	 end
	end
	private
	def set_place
		@place = Place.find(params[:id])
      rescue ActiveRecord::RecordNotFound => errors
       render json: {status: "fail", messages:errors.message}
  end

	def place_params
		params.require(:place).permit(:name, :description, :image_url, :langitude, :latitude, :state, :city, :country, images_attributes: [:id, :url])
	end
end
