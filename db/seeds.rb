# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ tag_name: 'Star Wars' }, { tag_name: 'Lord of the Rings' }])
#   Character.create(tag_name: 'Luke', movie: movies.first)
require 'open-uri'
Question.destroy_all

question_1 = Question.create([ { question: 'What do you prefer?', answer_1: "Indoors", next_question_1: 2, answer_2: "Outdoors", next_question_2: 3} ])
question_2 = Question.create([ { question: 'What do you prefer?', answer_1: "Going Out", next_question_1: 4, answer_2: "Activity", next_question_2: 5} ])
question_3 = Question.create([ { question: 'What do you prefer?', answer_1: "Going Out", next_question_1: 6, answer_2: "Activity", next_question_2: 7} ])
question_4 = Question.create([ { question: 'What do you prefer?', answer_1: "Food", next_question_1: 8, answer_2: "Drinks", next_question_2: 9} ])
question_5 = Question.create([ { question: 'What do you prefer?', answer_1: "Sports", next_question_1: 10, answer_2: "Arts", next_question_2: 11} ])
question_6 = Question.create([ { question: 'What do you prefer?', answer_1: "Food", next_question_1: 12, answer_2: "Drinks", next_question_2: 13} ])
question_7 = Question.create([ { question: 'What do you prefer?', answer_1: "Sports", next_question_1: 14, answer_2: "Arts", next_question_2: 15} ])
question_8 = Question.create([ { question: 'What do you prefer?', answer_1: "Restaurant", answer_2: "Market"} ])
question_9 = Question.create([ { question: 'What do you prefer?', answer_1: "Bar", answer_2: "Party"} ])
question_10 = Question.create([ { question: 'What do you prefer?', answer_1: "Watching", answer_2: "Playing"} ])
question_11 = Question.create([ { question: 'What do you prefer?', answer_1: "TV", answer_2: "Music"} ])
question_12 = Question.create([ { question: 'What do you prefer?', answer_1: "Restaurant", answer_2: "Market"} ])
question_13 = Question.create([ { question: 'What do you prefer?', answer_1: "Bar", answer_2: "Party"} ])
question_14 = Question.create([ { question: 'What do you prefer?', answer_1: "Watching", answer_2: "Playing"} ])
question_15 = Question.create([ { question: 'What do you prefer?', answer_1: "TV", answer_2: "Music"} ])

User.destroy_all
Activity.destroy_all

def create_activity_tags(top_level, second_level, third_level, fourth_level)
  ActivityTag.create!(
    id_question: 1,
    id_activity: activity.id,
    tag_name: top_level
  )
  ActivityTag.create!(
    id_question: 2,
    id_activity: activity.id,
    tag_name: second_level
  )
  ActivityTag.create!(
    id_question: 3,
    id_activity: activity.id,
    tag_name: third_level
  )
  ActivityTag.create!(
    id_question: 4,
    id_activity: activity.id,
    tag_name: fourth_level
  )
end


# user = User.new(
#   first_tag_name: "Admin",
#   last_tag_name: "Admin",
#   email: "admin@com",
#   password: "123456admin",
#   address: "138 Kingsland Rd",
#   birth_date: "19.07.1991"
# )
# user.save!

activity = Activity.new(
  title: "New Activity",
  description: "Have fun at le Wagon",
  price: "20",
  rating: "4.5",
  location: "138 Kingsland Rd, London"
)
file = URI.open("https://www1.chester.ac.uk/sites/default/files/styles/hero/public/Events%20Management%20festival%20image.jpg")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "Dans le noir?",
  description: "Located in the heart of London invites you to dine in complete darkness, accompanied and served by unexpected guides.",
  price: "100",
  rating: "4.5",
  location: "69-73 St John Street, EC1M 4AN London"
)
create_activity_tags("Indoors", "Going Out", "Food", "Restaurant")
file = URI.open("https://london.danslenoir.com/templates/yootheme/cache/SHOOTING_WEBSITE_13-13eee0fe.jpeg")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "The murdér express",
  description: "Enjoy a meal cooked by a MasterChef inside a 19th century train carriage on The Murdér Express.",
  price: "65",
  rating: "3.0",
  location: "Arch 63 Pedley Street, E1 5BW"
)
create_activity_tags("Indoors", "Going Out", "Food", "Restaurant")
file = URI.open("https://media.timeout.com/images/105449407/1372/772/image.jpg")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "Mercato Metropolitano",
  description: "Mercato Metropolitano is London’s first sustainable community market. Has incubated more than 40 food and beverage businesses, a delicatessen with sustainably sourced products from local farmers and artisans, a unique cinema experience, a communal kitchen and several circular economy concepts including a Bavarian micro-brewery.",
  price: "20",
  rating: "5.0",
  location: "42 Newington Causeway, London SE1 6DR"
)
create_activity_tags("Indoors", "Going Out", "Food", "Market")
file = URI.open("https://www.efanews.eu/resources/800x800/868cfa3c866242613830e71caa4f6734.jpg.jpg")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "Bang Bang - Oriental Foodhall",
  description: "The Bang Bang Oriental Foodhall is the newest and largest Asian food court in London, and boasts the widest range of specialist Asian restaurants in the whole of the UK.",
  price: "40",
  rating: "3.0",
  location: "399 Edgware Road, Colindale, London NW9 0FH"
)
create_activity_tags("Indoors", "Going Out", "Food", "Market")
file = URI.open("https://offloadmedia.feverup.com/secretldn.com/wp-content/uploads/2017/07/27045341/bang-bang-oriental-food-hall-1024x683.jpg")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "Cahoots",
  description: "Cahoots is a 1940s-themed bar located in the heart of London’s Soho. Set inside an abandoned train station, the scoundrels of this station-speakeasy serve up spiffing cocktails, jolly-good rations and live swinging entertainment seven days a week.",
  price: "30",
  rating: "5.0",
  location: "13 Kingly Ct, Carnaby, London W1B 5PW"
)
create_activity_tags("Indoors", "Going Out", "Drinks", "Bars")
file = URI.open("https://www.theworlds50best.com/discovery/filestore/jpg/Cahoots-London-UK-03.jpg")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "The Cauldron",
  description: "The Cauldron is an immersive cocktail-making class where guests use science and technology to make magic real. Come and brew some molecular cocktails with working magic wands!",
  price: "35",
  rating: "4.0",
  location: "5d Stoke Newington Rd, London N16 8BH"
)
create_activity_tags("Indoors", "Going Out", "Drinks", "Bars")
file = URI.open("https://vedcdn.imgix.net/images/product/large/immersive-magical-cocktail-experience-27130001.jpg?auto=compress,format")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "The Cauldron",
  description: "The Cauldron is an immersive cocktail-making class where guests use science and technology to make magic real. Come and brew some molecular cocktails with working magic wands!",
  price: "35",
  rating: "4.0",
  location: "5d Stoke Newington Rd, London N16 8BH"
)
create_activity_tags("Indoors", "Going Out", "Drinks", "Bars")
file = URI.open("https://vedcdn.imgix.net/images/product/large/immersive-magical-cocktail-experience-27130001.jpg?auto=compress,format")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "Cirque le Soir",
  description: "Plush, circus-themed nightclub with DJs, burlesque snake charmers, fire eaters and indoor funfair.",
  price: "150",
  rating: "4.0",
  location: "15-21 Ganton St, Carnaby, London W1F 9BN"
)
create_activity_tags("Indoors", "Going Out", "Drinks", "Party")
file = URI.open("https://vedcdn.imgix.net/images/product/large/immersive-magical-cocktail-experience-27130001.jpg?auto=compress,format")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "Silent Disco at The View from The Shard",
  description: "The silent disco phenomenon reaches new heights at these exclusive Time Out events. Pick your vibe and choose your side as three DJs battle it out over separate wireless channels, playing the best in pop, rock and party classics, while you dance the night away 1,000ft in th air.",
  price: "40",
  rating: "5.0",
  location: "32 London Bridge St, London SE1 9SG"
)
create_activity_tags("Indoors", "Going Out", "Drinks", "Party")
file = URI.open("https://d32dbz94xv1iru.cloudfront.net/resize/1/images/events/by_uuid/53/53dede37-0194-475f-9420-04f8f32b2236-1500x900.jpg?width=960")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "Money Heist - The Experience",
  description: "In Money Heist: The Experience you’ll live out the first ever international robbery in person. Take part in this immersive experience full of special effects and endless surprises.",
  price: "40",
  rating: "4.0",
  location: "79-85 Old Brompton Road, SW7 3LD"
)
create_activity_tags("Indoors", "Activity", "Arts", "TV")
file = URI.open("https://offloadmedia.feverup.com/secretmiami.com/wp-content/uploads/2021/06/03043751/Copy-of-NC_LCDP_Careta5-1024x576.jpg")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!

activity = Activity.new(
  title: "Sherlock Holmes - The official Live Game",
  description: "Experience our immersive Sherlock Escape Room, and solve London's new murder mystery.",
  price: "40",
  rating: "4.0",
  location: "79-85 Old Brompton Road, SW7 3LD"
)
create_activity_tags("Indoors", "Activity", "Arts", "TV")
file = URI.open("https://m.media-amazon.com/images/M/MV5BMWY3NTljMjEtYzRiMi00NWM2LTkzNjItZTVmZjE0MTdjMjJhL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTQ4NTc5OTU@._V1_FMjpg_UX1000_.jpg")
activity.photo.attach(io: file, filetag_name: 'poster.png', content_type: 'image/png')
activity.save!
