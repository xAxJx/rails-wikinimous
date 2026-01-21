# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Article.destroy_all

10.times do
  title = Faker::GreekPhilosophers.unique.name
  quote = Faker::GreekPhilosophers.unique.quote
  content =Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 5)

  new = Article.create!(title: title, content: (quote + " " + content))
  puts new.title
  puts new.content
end

puts "Finished seeding"
