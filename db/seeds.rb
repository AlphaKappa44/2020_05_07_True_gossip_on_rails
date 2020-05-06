# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# -----------------------------------------------------------------------------------------------
 User.destroy_all
 City.destroy_all
 Gossip.destroy_all
 Gossiptag.destroy_all
 Tag.destroy_all
 PrivateMessage.destroy_all
# _________________________________________________________________________________________________
require "faker"

10.times do |i|
  city = City.create(name: Faker::Address.city, zip_code: Faker::Space.planet)
  tag = Tag.create(title: Faker::Sports::Football.team)
  puts "create city #{i}"
  puts "create tag #{i}"
end
puts "END OF CITIES"
puts "END OF TAG"

10.times do |i|
#   x = rand(1..5)
#   x.times do
    1.times do
    puts "create user #{i}"
    user = User.create!(first_name: Faker::Military.marines_rank, last_name: Faker::Beer.hop, description: Faker::DcComics.title, email: Faker::Internet.email, age: rand(18..99), city_id: City.all.sample.id)
    # n = rand(2..10)
    # n.times do
    3.times do
      puts "create gossip and gossip tag #{i}"
      gossip = Gossip.create!(title: Faker::Music::RockBand.name, content: Faker::Quotes::Chiquito.joke, user_id: user.id)
      gossiptag = Gossiptag.create(gossip_id: Gossip.all.sample.id, tag_id: Tag.all.sample.id)  #PROBLEME ajouter references?
    end
  end
end
puts "END OF USERS"

11.times do |i|
    puts "create PM #{i}"
    pm = PrivateMessage.create(content: Faker::Quote.most_interesting_man_in_the_world, sender_id: User.all.sample.id, recipient_id: User.all.sample.id)
  end
# -------------------------------------------------------------------------------------------------------------------------
puts "END OF PM-Private Messages"

# require 'faker'

# User.destroy_all
# City.destroy_all
# Gossip.destroy_all
# Tag.destroy_all
# PrivateMessage.destroy_all

# 10.times do
#   City.create(
#     name: Faker::Space.planet,
#     zip_code: Faker::Address.zip_code
#   )
# end

# 10.times do
#   User.create(
#     first_name: Faker::Artist.name,
#     last_name: Faker::Beer.hop,
#     description: Faker::Military.marines_rank,
#     email: Faker::Internet.email,
#     age: rand(16..88),
#     city: City.all.sample
#     )
# end

# ---------------------------------PROBLEME
# 20.times do
#   Gossip.create(
#     title: Faker::Music::RockBand,
#     content: Faker::Books::Lovecraft,
#     user: User.all.sample
#     )
# end

# 10.times do
#     tag = Tag.create(
#         title: Faker::Football.competition
#     )
# end

# 30.times do
#     gossiptag = Gossiptag.create(
#         gossip: Gossip.all.sample,
#         tag: Tag.all.sample
#     )
# end
# -------------------------------PROBLEME

# 10.times do
#     private = PrivateMessage.new
#     private.sender = User.all.sample
#     private.recipient = User.all.sample
#     private.content = Faker::Books::Lovecraft
#     private.save
# end