# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = {"Simula"=>7, "Haskell"=>5, "JavaScript"=>10, "C#"=>112}

categories = cats.map do |k,v|
  c = Category.find_or_create_by(name: k)
  c.articles.find_or_create_by(
    name: "An article about #{k}",
    impressions_count: v
  )
end
