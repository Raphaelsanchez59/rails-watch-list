# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:

20.times do
  title = Faker::Movie.unique.title
  Movie.find_or_create_by!(title: title) do |movie|
    movie.overview = Faker::Lorem.paragraph(sentence_count: 3)
  end
end

#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
