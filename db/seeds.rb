# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

List.destroy_all
Task.destroy_all
FriendRequest.destroy_all
User.destroy_all


puts "Creating Users 👨🏽"
user_arr = [
  {
    username: "techtwin",
    password: "123",
    name: "Shevaughn Grant",
    img: "https://i.imgur.com/RqIw2b4.png"
  },
  {
    username: "jaquan1314",
    password: "123",
    name: "Javaughn Grant",
    img: "https://i.imgur.com/RqIw2b4.png"
  },
  {
    username: "juliaz",
    password: "123",
    name: "Julia Zolotarev",
    img: "https://i.imgur.com/0iSQ15t.png"
  },
  {
    username: "steven",
    password: "123",
    name: "Steven Wu",
    img: "https://i.imgur.com/a7TJpiA.png"
  },
]

user_arr.each do |userObj|
  User.create!(userObj)
end


puts "Creating Lists 📝"
list_arr = [
  {
    user_id: User.first.id,
    name: "Study",
    color: "#39F014"
  },
  {
    user_id: User.first.id,
    name: "Important",
    color: "#FF1700"
  },
  {
    user_id: User.third.id,
    name: "Health",
    color: "#FF75FB"
  },
  {
    user_id: User.second.id,
    name: "Entertainment",
    color: "#07E5FF"
  },
]

list_arr.each do |listObj|
  List.create!(listObj)
end


puts "Creating Friend Requests 🔔"
friend_request_arr = [
  {
    requestor_id: 1,
    receiver_id: 4
  },
  {
    requestor_id: 1,
    receiver_id: 3
  },
  {
    requestor_id: 1,
    receiver_id: 2
  },
]

friend_request_arr.each do |friendObj|
  FriendRequest.create!(friendObj)
end