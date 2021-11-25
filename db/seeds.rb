require 'open-uri'

last_question_id = Question.last.id
Question.destroy_all

question_1 = Question.create(question: 'What do you prefer today?', answer_1: "Indoors", next_question_1: last_question_id + 2, answer_2: "Outdoors", next_question_2: last_question_id + 3)
p question_1
question_1.photos.attach(io: URI.open("https://source.unsplash.com/featured/?indoors"), filename: 'poster1.png', content_type: 'image/png')
question_1.photos.attach(io: URI.open("https://source.unsplash.com/featured/?outdoors"), filename: 'poster2.png', content_type: 'image/png')
question_1.save!

question_2 = Question.create(question: 'Are you looking for?', answer_1: "Food/Drinks", next_question_1: last_question_id + 4, answer_2: "Experiences", next_question_2: last_question_id + 5)
question_2.photos.attach(io: URI.open("https://source.unsplash.com/featured/?meal,indoors"), filename: 'poster1.png', content_type: 'image/png')
question_2.photos.attach(io: URI.open("https://source.unsplash.com/featured/?experiences,indoors"), filename: 'poster2.png', content_type: 'image/png')
question_2.save!

question_3 = Question.create(question: 'Are you looking for?', answer_1: "Food/Drinks", next_question_1: last_question_id + 6, answer_2: "Experiences", next_question_2: last_question_id + 7)
question_3.photos.attach(io: URI.open("https://source.unsplash.com/featured/?meal,outdoors"), filename: 'poster1.png', content_type: 'image/png')
question_3.photos.attach(io: URI.open("https://source.unsplash.com/featured/?experiences,oudoors"), filename: 'poster2.png', content_type: 'image/png')
question_3.save!

question_4 = Question.create(question: 'Are you feeling...?', answer_1: "Hungry", next_question_1: last_question_id + 8, answer_2: "Thirsty", next_question_2: last_question_id + 9)
question_4.photos.attach(io: URI.open("https://source.unsplash.com/featured/?hungry"), filename: 'poster1.png', content_type: 'image/png')
question_4.photos.attach(io: URI.open("https://source.unsplash.com/featured/?thirsty"), filename: 'poster2.png', content_type: 'image/png')
question_4.save!

question_5 = Question.create(question: 'What type of experience would you like to do?', answer_1: "Sports", next_question_1: last_question_id + 10, answer_2: "Arts", next_question_2: last_question_id + 11)
question_5.photos.attach(io: URI.open("https://source.unsplash.com/featured/?sports,indoors"), filename: 'poster1.png', content_type: 'image/png')
question_5.photos.attach(io: URI.open("https://source.unsplash.com/featured/?arts,indoors"), filename: 'poster2.png', content_type: 'image/png')
question_5.save!

question_6 = Question.create(question: 'Are you feeling...?', answer_1: "Hungry", next_question_1: last_question_id + 12, answer_2: "Thirsty", next_question_2: last_question_id + 13)
question_6.photos.attach(io: URI.open("https://source.unsplash.com/featured/?hungry"), filename: 'poster1.png', content_type: 'image/png')
question_6.photos.attach(io: URI.open("https://source.unsplash.com/featured/?thirsty"), filename: 'poster2.png', content_type: 'image/png')
question_6.save!

question_7 = Question.create(question: 'What type of experience would you like to do?', answer_1: "Sports", next_question_1: last_question_id + 14, answer_2: "Arts", next_question_2: last_question_id + 15)
question_7.photos.attach(io: URI.open("https://source.unsplash.com/featured/?sports,outdoors"), filename: 'poster1.png', content_type: 'image/png')
question_7.photos.attach(io: URI.open("https://source.unsplash.com/featured/?arts,outdoors"), filename: 'poster2.png', content_type: 'image/png')
question_7.save!

question_8 = Question.create(question: 'Are you up for?', answer_1: "Restaurant", answer_2: "Market")
question_8.photos.attach(io: URI.open("https://source.unsplash.com/featured/?restaurant,indoors"), filename: 'poster1.png', content_type: 'image/png')
question_8.photos.attach(io: URI.open("https://source.unsplash.com/featured/?foodmarket,indoors"), filename: 'poster2.png', content_type: 'image/png')
question_8.save!

question_9 = Question.create(question: 'Are you up for?', answer_1: "Bar", answer_2: "Club")
question_9.photos.attach(io: URI.open("https://source.unsplash.com/featured/?bar"), filename: 'poster1.png', content_type: 'image/png')
question_9.photos.attach(io: URI.open("https://source.unsplash.com/featured/?experiences,clubbing"), filename: 'poster2.png', content_type: 'image/png')
question_9.save!

question_10 = Question.create(question: 'Are you up for?', answer_1: "Adrenaline", answer_2: "Social")
question_10.photos.attach(io: URI.open("https://source.unsplash.com/featured/?adrenaline"), filename: 'poster1.png', content_type: 'image/png')
question_10.photos.attach(io: URI.open("https://source.unsplash.com/featured/?social"), filename: 'poster2.png', content_type: 'image/png')
question_10.save!

question_11 = Question.create(question: 'Are you up for?', answer_1: "Film", answer_2: "Music")
question_11.photos.attach(io: URI.open("https://source.unsplash.com/featured/?film"), filename: 'poster1.png', content_type: 'image/png')
question_11.photos.attach(io: URI.open("https://source.unsplash.com/featured/?music"), filename: 'poster2.png', content_type: 'image/png')
question_11.save!

question_12 = Question.create(question: 'Are you up for?', answer_1: "Restaurant", answer_2: "Market")
question_12.photos.attach(io: URI.open("https://source.unsplash.com/featured/?restaurant,outdoors"), filename: 'poster1.png', content_type: 'image/png')
question_12.photos.attach(io: URI.open("https://source.unsplash.com/featured/?foodmarket,outdoors"), filename: 'poster2.png', content_type: 'image/png')
question_12.save!

question_13 = Question.create(question: 'Are you up for?', answer_1: "Bar", answer_2: "Club")
question_13.photos.attach(io: URI.open("https://source.unsplash.com/featured/?bar,outdoors"), filename: 'poster1.png', content_type: 'image/png')
question_13.photos.attach(io: URI.open("https://source.unsplash.com/featured/?clubbing,outdoors"), filename: 'poster2.png', content_type: 'image/png')
question_13.save!

question_14 = Question.create(question: 'Are you up for?', answer_1: "Adrenaline", answer_2: "Social")
question_14.photos.attach(io: URI.open("https://source.unsplash.com/featured/?adrenaline"), filename: 'poster1.png', content_type: 'image/png')
question_14.photos.attach(io: URI.open("https://source.unsplash.com/featured/?social,outdoors"), filename: 'poster2.png', content_type: 'image/png')
question_14.save!

question_15 = Question.create(question: 'Are you up for?', answer_1: "Film", answer_2: "Music")
question_15.photos.attach(io: URI.open("https://source.unsplash.com/featured/?cinema,outdoors"), filename: 'poster1.png', content_type: 'image/png')
question_15.photos.attach(io: URI.open("https://source.unsplash.com/featured/?musicfestival"), filename: 'poster2.png', content_type: 'image/png')
question_15.save!

User.destroy_all
Activity.destroy_all

def create_activity_tags(activity, top_level, second_level, third_level, fourth_level)
  ActivityTag.create(
    question_id: Question.where(answer_1: top_level).or(Question.where(answer_2: top_level)).first.id,
    activity_id: Activity.last.id,
    tag_name: top_level
  )
  ActivityTag.create(
    question_id: Question.where(answer_1: second_level).or(Question.where(answer_2: second_level)).first.id,
    activity_id: Activity.last.id,
    tag_name: second_level
  )
  ActivityTag.create(
    question_id: Question.where(answer_1: third_level).or(Question.where(answer_2: third_level)).first.id,
    activity_id: Activity.last.id,
    tag_name: third_level
  )
  ActivityTag.create(
    question_id: Question.where(answer_1: fourth_level).or(Question.where(answer_2: fourth_level)).first.id,
    activity_id: Activity.last.id,
    tag_name: fourth_level
  )
end

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
  title: "Dans le noir?",
  description: "Located in the heart of London invites you to dine in complete darkness, accompanied and served by unexpected guides.",
  price: "100",
  rating: "4.5",
  location: "69-73 St John Street, EC1M 4AN London"
)
file = URI.open("https://london.danslenoir.com/templates/yootheme/cache/SHOOTING_WEBSITE_13-13eee0fe.jpeg")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!
create_activity_tags(activity, "Indoors", "Food/Drinks", "Hungry", "Restaurant")

activity = Activity.new(
  title: "The murdér express",
  description: "Enjoy a meal cooked by a MasterChef inside a 19th century train carriage on The Murdér Express.",
  price: "65",
  rating: "3.0",
  location: "Arch 63 Pedley Street, E1 5BW"
)
file = URI.open("https://media.timeout.com/images/105449407/1372/772/image.jpg")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!
create_activity_tags(activity, "Indoors", "Food/Drinks", "Hungry", "Restaurant")

activity = Activity.new(
  title: "Mercato Metropolitano",
  description: "Mercato Metropolitano is London’s first sustainable community market. Has incubated more than 40 food and beverage businesses, a delicatessen with sustainably sourced products from local farmers and artisans, a unique cinema experience, a communal kitchen and several circular economy concepts including a Bavarian micro-brewery.",
  price: "20",
  rating: "5.0",
  location: "42 Newington Causeway, London SE1 6DR"
)
file = URI.open("https://www.efanews.eu/resources/800x800/868cfa3c866242613830e71caa4f6734.jpg.jpg")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!
create_activity_tags(activity, "Indoors", "Food/Drinks", "Hungry", "Market")

activity = Activity.new(
  title: "Bang Bang - Oriental Foodhall",
  description: "The Bang Bang Oriental Foodhall is the newest and largest Asian food court in London, and boasts the widest range of specialist Asian restaurants in the whole of the UK.",
  price: "40",
  rating: "3.0",
  location: "399 Edgware Road, Colindale, London NW9 0FH"
)
file = URI.open("https://offloadmedia.feverup.com/secretldn.com/wp-content/uploads/2017/07/27045341/bang-bang-oriental-food-hall-1024x683.jpg")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!
create_activity_tags(activity, "Indoors", "Food/Drinks", "Hungry", "Market")

activity = Activity.new(
  title: "Cahoots",
  description: "Cahoots is a 1940s-themed bar located in the heart of London’s Soho. Set inside an abandoned train station, the scoundrels of this station-speakeasy serve up spiffing cocktails, jolly-good rations and live swinging entertainment seven days a week.",
  price: "30",
  rating: "5.0",
  location: "13 Kingly Ct, Carnaby, London W1B 5PW"
)
file = URI.open("https://www.theworlds50best.com/discovery/filestore/jpg/Cahoots-London-UK-03.jpg")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!
create_activity_tags(activity, "Indoors", "Food/Drinks", "Thirsty", "Bar")

activity = Activity.new(
  title: "The Cauldron",
  description: "The Cauldron is an immersive cocktail-making class where guests use science and technology to make magic real. Come and brew some molecular cocktails with working magic wands!",
  price: "35",
  rating: "4.0",
  location: "5d Stoke Newington Rd, London N16 8BH"
)
file = URI.open("https://vedcdn.imgix.net/images/product/large/immersive-magical-cocktail-experience-27130001.jpg?auto=compress,format")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!
create_activity_tags(activity, "Indoors", "Food/Drinks", "Thirsty", "Bar")

activity = Activity.new(
  title: "Cirque le Soir",
  description: "Plush, circus-themed nightclub with DJs, burlesque snake charmers, fire eaters and indoor funfair.",
  price: "150",
  rating: "4.0",
  location: "15-21 Ganton St, Carnaby, London W1F 9BN"
)
file = URI.open("https://vedcdn.imgix.net/images/product/large/immersive-magical-cocktail-experience-27130001.jpg?auto=compress,format")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!
create_activity_tags(activity, "Indoors", "Food/Drinks", "Thirsty", "Club")

activity = Activity.new(
  title: "Silent Disco at The View from The Shard",
  description: "The silent disco phenomenon reaches new heights at these exclusive Time Out events. Pick your vibe and choose your side as three DJs battle it out over separate wireless channels, playing the best in pop, rock and party classics, while you dance the night away 1,000ft in th air.",
  price: "40",
  rating: "5.0",
  location: "32 London Bridge St, London SE1 9SG"
)
file = URI.open("https://d32dbz94xv1iru.cloudfront.net/resize/1/images/events/by_uuid/53/53dede37-0194-475f-9420-04f8f32b2236-1500x900.jpg?width=960")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!
create_activity_tags(activity, "Indoors", "Food/Drinks", "Thirsty", "Club")

activity = Activity.new(
  title: "Money Heist - The Experience",
  description: "In Money Heist: The Experience you’ll live out the first ever international robbery in person. Take part in this immersive experience full of special effects and endless surprises.",
  price: "45",
  rating: "4.0",
  location: "79-85 Old Brompton Road, SW7 3LD"
)
file = URI.open("https://offloadmedia.feverup.com/secretmiami.com/wp-content/uploads/2021/06/03043751/Copy-of-NC_LCDP_Careta5-1024x576.jpg")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!
create_activity_tags(activity, "Indoors", "Experiences", "Arts", "Film")

activity = Activity.new(
  title: "Sherlock Holmes - The official Live Game",
  description: "Experience our immersive Sherlock Escape Room, and solve London's new murder mystery.",
  price: "40",
  rating: "4.0",
  location: "79-85 Old Brompton Road, SW7 3LD"
)
file = URI.open("https://m.media-amazon.com/images/M/MV5BMWY3NTljMjEtYzRiMi00NWM2LTkzNjItZTVmZjE0MTdjMjJhL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTQ4NTc5OTU@._V1_FMjpg_UX1000_.jpg")
activity.photo.attach(io: file, filename: 'poster.png', content_type: 'image/png')
activity.save!
create_activity_tags(activity, "Indoors", "Experiences", "Arts", "Film")
