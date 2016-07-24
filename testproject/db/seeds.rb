# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
200.times do |i|
  Article.create(
    title: "Article ##{i}",
    body: "An article with a beautiful body. This is the article ##{i}",
    category: "sport"
  )
end
