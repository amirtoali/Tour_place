# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
20.times do
	palace= Place.create(
		name: Faker::Address.unique.street_name,
		description:Faker::Lorem.paragraph,
		state: Faker::Address.state,
		city:  Faker::Address.city,
		country:  Faker::Address.country,
		langitude:  Faker::Address.longitude,
		latitude:  Faker::Address.latitude
		)
   5.times do 
   	palace.images.create(url:"https://chittore.jpg")
   end
end