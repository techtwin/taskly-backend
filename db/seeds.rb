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
    img: "https://i.imgur.com/GQuKq1P.png"
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
  {
    username: "jaquan1314",
    password: "123",
    name: "Javaughn Grant",
    img: "https://i.imgur.com/GQuKq1P.png"
  },
  {
    username: "becca",
    password: "123",
    name: "Rebecca Robbins",
    img: "https://i.imgur.com/2YBNWMq.png"
  },
  {
    username: "metrio",
    password: "123",
    name: "Demetrio Lima",
    img: "https://i.imgur.com/h4UPtYZ.png"
  },
  {
    username: "seccho",
    password: "123",
    name: "Lee Michaeli",
    img: "https://i.imgur.com/AELlknK.png"
  },
  {
    username: "scratchy",
    password: "123",
    name: "Brian Sahota",
    img: "https://i.imgur.com/RqIw2b4.png"
  },
  {
    username: "cristobal",
    password: "123",
    name: "Christopher Clark",
    img: "https://i.imgur.com/ND4tcNz.png"
  },
  {
    username: "eitan",
    password: "123",
    name: "Eitan Charytan-Spitz",
    img: "https://i.imgur.com/h4UPtYZ.png"
  },
  {
    username: "nohaderf",
    password: "123",
    name: "Freda Hon",
    img: "https://i.imgur.com/3A9esJW.png"
  },
  {
    username: "james",
    password: "123",
    name: "James Ardery",
    img: "https://i.imgur.com/AELlknK.png"
  },
  {
    username: "john",
    password: "123",
    name: "John Exarhouleas",
    img: "https://i.imgur.com/AELlknK.png"
  },
  {
    username: "flash",
    password: "123",
    name: "Jomarie Polanco",
    img: "https://i.imgur.com/WpiECbR.png"
  },
  {
    username: "jhak",
    password: "123",
    name: "Jonathan Hakimian",
    img: "https://i.imgur.com/FNB3KK5.png"
  },
  {
    username: "cetris",
    password: "123",
    name: "Karina Guerra",
    img: "https://i.imgur.com/3A9esJW.png"
  },
  {
    username: "aru",
    password: "123",
    name: "Kevin Huang",
    img: "https://i.imgur.com/a7TJpiA.png"
  },
  {
    username: "mkoenke",
    password: "123",
    name: "Mary Koenke",
    img: "https://i.imgur.com/zG9qSnk.png"
  },
  {
    username: "snakejuice",
    password: "123",
    name: "Patricia Arnedo",
    img: "https://i.imgur.com/0iSQ15t.png"
  },
  {
    username: "sdelane",
    password: "123",
    name: "Sean Delaney",
    img: "https://i.imgur.com/ApRsiSa.png"
  },
  {
    username: "chicktor",
    password: "123",
    name: "Victor Torres",
    img: "https://i.imgur.com/ApRsiSa.png"
  },
  {
    username: "briang",
    password: "123",
    name: "Bryan Gonzalez",
    img: "https://i.imgur.com/RqIw2b4.png"
  },
  {
    username: "warren",
    password: "123",
    name: "Warren Niu",
    img: "https://i.imgur.com/a7TJpiA.png"
  },
  {
    username: "mishelby",
    password: "123",
    name: "Shelby Talbert",
    img: "https://i.imgur.com/0iSQ15t.png"
  },
  {
    username: "sam",
    password: "123",
    name: "Sam D.Boahen",
    img: "https://i.imgur.com/ukHw9h5.png"
  },
  {
    username: "roman",
    password: "123",
    name: "Roman Tetelbaum",
    img: "https://i.imgur.com/ND4tcNz.png"
  },
  {
    username: "israel",
    password: "123",
    name: "Israel Canessa",
    img: "https://i.imgur.com/ApRsiSa.png"
  }
]

user_arr.each do |userObj|
  User.create!(userObj)
end


# puts "Creating Lists 📝"
# list_arr = [
#   {
#     user_id: User.first.id,
#     name: "Study",
#     color: "#39F014"
#   },
#   {
#     user_id: User.first.id,
#     name: "Important",
#     color: "#FF1700"
#   },
#   {
#     user_id: User.third.id,
#     name: "Health",
#     color: "#FF75FB"
#   },
#   {
#     user_id: User.second.id,
#     name: "Entertainment",
#     color: "#07E5FF"
#   },
# ]

# list_arr.each do |listObj|
#   List.create!(listObj)
# end

