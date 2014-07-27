# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


category = %w(abstract city animals people transport food nature business nightlife sports fashion technics)


category.each do |name|
    Category.create(name: name)
end

abstract = Category.where(name: "abstract").first
city = Category.where(name: "city").first
animals = Category.where(name: "animals").first
people = Category.where(name: "people").first
transport = Category.where(name: "transport").first
animals = Category.where(name: "animals").first
food = Category.where(name: "food").first
nature = Category.where(name: "nature").first
business = Category.where(name: "business").first
nightlife = Category.where(name: "nightlife").first
fashion = Category.where(name: "fashion").first
sports = Category.where(name: "sports").first
technics = Category.where(name: "technics").first



2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/abstract/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => abstract.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/people/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => people.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/city/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => city.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/transport/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => transport.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/animals/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => animals.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/food/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => food.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/nature/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => nature.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/business/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => business.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/nightlife/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => nightlife.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/sports/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => sports.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/fashion/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => fashion.id
    )
end

2.times do |title, description, author, category|

  title = Faker::Company.catch_phrase
  description = Faker::Lorem.paragraph
  picture_url = "/technics/" + rand(1..9).to_s + "/" 
  artist = Faker::Name.name

  Picture.create!( 
    :title => title,
    :description => description,
    :artist => artist,
    :picture_url => picture_url,
    :category_id => technics.id
    )
end

