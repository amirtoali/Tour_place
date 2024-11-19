class Place < ApplicationRecord
	validates :name, :description, :langitude, :latitude, :state, :city, :country,  presence: true 


end
