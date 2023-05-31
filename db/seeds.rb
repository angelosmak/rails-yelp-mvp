# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: %w[Italian Mexican Japanese Indian].sample
  )

  if restaurant.save
    3.times do
      review = restaurant.reviews.new(
        content: Faker::Restaurant.review,
        rating: rand(1..5)
      )
      review.save
    end
  else
    puts "Failed to create a restaurant: #{restaurant.errors.full_messages.join(', ')}"
  end
end
