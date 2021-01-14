# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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
  }
  {
    username: "jaquan1314",
    password: "123",
    name: "Javaughn Grant",
    img: "https://i.imgur.com/RqIw2b4.png"
  }
  {
    username: "juliaz",
    password: "123",
    name: "Julia Zolotarev",
    img: "https://i.imgur.com/0iSQ15t.png"
  }
  {
    username: "steven",
    password: "123",
    name: "Steven Wu",
    img: "https://i.imgur.com/a7TJpiA.png"
  }
]

user_arr.each do |userObj|
  User.create!(userObj)
end

puts "Creating Lists 📝"
list_arr = [
  {
    name: "Study",
    color: "#39F014"
  }
  {
    name: "Important",
    color: "#FF1700"
  }
  {
    name: "Health",
    color: "#FF75FB"
  }
]