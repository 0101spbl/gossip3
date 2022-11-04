# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
require 'faker'  # movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Gossip.destroy_all
User.destroy_all
City.destroy_all


10.times do
	City.create!(
	  name: Faker::Address.city,
	  zip_code: Faker::Base.regexify(/[0-8][0-9][0-9]{3}/)
	)
  end

10.times do
    User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        description: Faker::Lorem.sentence,
        mail: Faker::Internet.email,
        age: Faker::Number.between(from: 7, to: 77),
        city_id: City.all.sample.id
      )
end

20.times do |index|	#cree 20 gossip en reference avec user
	Gossip.create(title: "Gossip#{index}",content: Faker::ChuckNorris.fact, user_id: rand(1..10))
end