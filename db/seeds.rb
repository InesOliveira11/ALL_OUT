# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

question = Question.create([ { question: 'What do you prefer?', answer_1: "indoors", answer_2: "outdoors"} ])
question_indoors = Question.create([ { question: 'What do you prefer?', answer_1: "food", answer_2: "drinks"} ])
question_outdoors = Question.create([ { question: 'What do you prefer?', answer_1: "hiking", answer_2: "visiting"} ])

User.destroy_all

user = User.new(
  first_name: "Admin",
  last_name: "Admin",
  email: "admin@com",
  password: "123456admin",
  address: "138 Kingsland Rd",
  birth_date: "19.07.1991"
)
user.save!

activity = Activity.new(
  title: "New Activity",
  description: "Have fun at le Wagon",
  price: "20",
  rating: "4.5",
  location: "138 Kingsland Rd"
)
activity.save!
