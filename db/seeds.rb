# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  Article.create(title: "Article #{i}", text: "Article with number #{i}")
end

5.times do |i|
  User.create(name: "#{i} user-man", login: "#{i} user", password: "#{i} wasdasd", email: "versus#{i}@gmail.com" )
end