# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

picture = %w(abstract city animals people transport food nature business nightlife sports fashion technics)

10.times do |title, description, author|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = picture[(rand(0..12))].to_s + "/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url
    )
end