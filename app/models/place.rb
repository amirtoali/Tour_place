class Place < ApplicationRecord
	validates :name, :description, :langitude, :latitude, :state, :city, :country,  presence: true
	has_many :images , as: :imageable


end
