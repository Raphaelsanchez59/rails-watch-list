# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:

Movie.find_or_create_by!(title: "Wonder Woman 1984") do |movie|
  movie.overview = "Wonder Woman comes into conflict with the Soviet union during the Cold War in the 1980s"
end

Movie.find_or_create_by!(title: "The Shawshank Redemption") do |movie|
  movie.overview = "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison"
end

Movie.find_or_create_by!(title: "Titanic") do |movie|
  movie.overview = "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic."
end

Movie.find_or_create_by!(title: "Ocean's Eight") do |movie|
  movie.overview = "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century."
end

#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
