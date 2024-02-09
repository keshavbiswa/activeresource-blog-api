# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do |i|
  User.create(
    first_name: "User#{i}",
    last_name: "User#{i}",
    email: "test#{i}@example.com"
  )
end

10.times do |i|
  Post.create(
    title: "Post#{i}",
    content: "This is the body of post#{i}",
    user_id: i
  )
end

10.times do |i|
  Comment.create(
    content: "This is the body of comment#{i}",
    post_id: i,
    user_id: i
  )
end

