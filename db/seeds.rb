# require 'faker'
#
# Event.delete_all
# Post.delete_all
# User.delete_all
#
# num_of_users = 100
# event_range = 10
# num_of_posts = 100
#
#
# tagArray = ["School", "Movie", "Music", "Technology","Reading", "Health"]
# eventArray = Array.new
# userArray = Array.new
# file = File.open("#{Rails.root}/app/assets/images/sydney.jpg")
#
# num_of_users.times do |u|
#   user = User.create!(email: "fantastic"+u.to_s+"@gmail.com", password: "00000000", password_confirmation: "00000000")
#   rand(event_range).times do |e|
#     event = Event.create!(title: "title-"+ u.to_s + "-" + e.to_s, description: Faker::Lorem.paragraph, tags: tagArray[rand(6)])
#     event.created_at = (rand*100).days.ago
#     event.image = file
#     eventArray.push(event)
#     user.organized_events << [event]
#     event.save!
#   end
#   userArray.push(user)
# end
#
#
# num_of_posts.times do |p|
#   event = eventArray[rand(eventArray.count)]
#   user = userArray[rand(userArray.count)]
#   post = Post.create(event_id: event.id, text_content: Faker::Lorem.paragraph ,vote_count: 0)
#   user.created_posts << [post]
# end
#
#
#
# file.close


event1 = Event.create(
  title: "Hot or Not",
  description: "Who is the hottest girl at school?",
  tags: "School"
  # image_file_name: "default.jpg"
)
event1.created_at = (rand*100).days.ago
event1.image = File.open("#{Rails.root}/app/assets/images/sydney.jpg")
event1.save


event2 = Event.create(
  title: "Best Movie",
  description: "Vote for the best movie on your mind",
  tags: "Movie"
  # image_file_name: "default.jpg"
)
event2.created_at = (rand*100).days.ago
event2.image = File.open("#{Rails.root}/app/assets/images/posters.jpg")
event2.save

event3 = Event.create(
  title: "Pop Star",
  description: "Best singer ever!",
  tags: "Music"
)
event3.created_at = (rand*100).days.ago
event3.image = File.open("#{Rails.root}/app/assets/images/american-idol.jpg")
event3.save

event4 = Event.create(
  title: 'My Favorite Book!',
  description: "Everyone must have one book that you read again and again. Share it with others now!",
  tags: "Reading"
)
event4.created_at = (rand*100).days.ago
event4.image = File.open("#{Rails.root}/app/assets/images/book.jpg")
event4.save

event5 = Event.create(
  title: "Those stressed-related health problems!",
  description: "Studies have found many health problems related to stress. Stress seems to worsen or increase the risk of conditions like obesity, heart disease, Alzheimer's disease, diabetes, depression, gastrointestinal problems, and asthma.",
  tags: "Health"
)
event5.created_at = (rand*100).days.ago
event5.image = File.open("#{Rails.root}/app/assets/images/health.jpg")
event5.save

event6 = Event.create(
  title: "Tech Tech",
  description: "Post the technical products that affect your life!",
  tags: "Technology"
)
event6.created_at = (rand*100).days.ago
event6.image = File.open("#{Rails.root}/app/assets/images/tech.jpg")
event6.save

event7 = Event.create(
  title: "Amazing musical at school",
  description: "Can't wait to share with people the most amazing musical at your school?",
  tags: "Music"
)
event7.created_at = (rand*100).days.ago
event7.image = File.open("#{Rails.root}/app/assets/images/music.jpg")
event7.save

event8 = Event.create(
  title: "Three-line love letter",
  description: "As classic as Sonnet, can you express your love in onle three line?",
  tags: "School"
)
event8.created_at = (rand*100).days.ago
event8.image = File.open("#{Rails.root}/app/assets/images/loveletter.jpg")
event8.save

event9 = Event.create(
  title: "Best Teacher 2015",
  description: "Hey Bruins! Two quarters have spent in 2015, do you have your best teacher candidate in mind?",
  tags: "School"
)
event9.created_at = (rand*100).days.ago
event9.image = File.open("#{Rails.root}/app/assets/images/teacher.jpg")
event9.save

event10 = Event.create(
  title: "Love Movie TOP10",
  description: "Let's select out the really top10 classic love movie and save it for a special time!",
  tags: "Movie"
)
event10.created_at = (rand*100).days.ago
event10.image = File.open("#{Rails.root}/app/assets/images/flipped.jpg")
event10.save

event11 = Event.create(
  title: "No.1 IT company",
  description: "As an IT worker, which company is your dream to work for?",
  tags: "Technology"
)
event11.created_at = (rand*100).days.ago
event11.image = File.open("#{Rails.root}/app/assets/images/companies.jpg")
event11.save

event12 = Event.create(
  title: "Those amazing OST:)",
  description: "Some music hidden in the movie or drama, waiting to be discovered and worth cherishing for lifetime.",
  tags: "Music"
)
event12.created_at = (rand*100).days.ago
event12.image = File.open("#{Rails.root}/app/assets/images/star.jpg")
event12.save

post1 = Post.create(
  event_id: event2.id,
  text_content: "The Shawshank Redemption(1994)",
  vote_count: 0
)
post1.image = File.open("#{Rails.root}/app/assets/images/shawshank.jpg")
post1.save

post2 = Post.create(
  event_id: event2.id,
  text_content: "The Godfather(1972)",
  vote_count: 0
)
post2.image = File.open("#{Rails.root}/app/assets/images/godfather.jpg")
post2.save

post3 = Post.create(
  event_id: event2.id,
  text_content: "Forrest Gump(1994)",
  vote_count: 0
)
post3.image = File.open("#{Rails.root}/app/assets/images/gump.jpg")
post3.save

post4 = Post.create(
  event_id: event2.id,
  text_content: "Gone Girl(2014)",
  vote_count: 0
)
post4.image = File.open("#{Rails.root}/app/assets/images/gonegirl.jpg")
post4.save

post10 = Post.create(
  event_id: event2.id,
  text_content: "12 Years a Slave(2013)",
  vote_count: 0
)
post10.image = File.open("#{Rails.root}/app/assets/images/slave.jpg")
post10.save

post11 = Post.create(
  event_id: event2.id,
  text_content: "Imitation Game(2014)",
  vote_count: 0
  # image: URI.parse("")
)
post11.image = File.open("#{Rails.root}/app/assets/images/imitation.jpg")
post11.save

post12 = Post.create(
  event_id: event2.id,
  text_content: "Inception(2011)",
  vote_count: 0
)
post12.image = File.open("#{Rails.root}/app/assets/images/inception.jpg")
post12.save

post5 = Post.create(
  event_id: event1.id,
  text_content: "Annie's smile is the best:)",
  vote_count: 0
)
post5.image = File.open("#{Rails.root}/app/assets/images/annie.jpg")
post5.save

post6 = Post.create(
  event_id: event1.id,
  text_content: "Sally is a pretty and kind girl. She never refuses to help anyone!",
  vote_count: 0
)
post6.image = File.open("#{Rails.root}/app/assets/images/sally.jpg")
post6.save

post7 = Post.create(
  event_id: event1.id,
  text_content: "Alex. Straight A student, no need for more talk.",
  vote_count: 0
)
post7.image = File.open("#{Rails.root}/app/assets/images/alex.jpg")
post7.save

post13 = Post.create(
  event_id: event1.id,
  text_content: "Haley.",
  vote_count: 0
)
post13.image = File.open("#{Rails.root}/app/assets/images/haley.jpg")
post13.save

post14 = Post.create(
  event_id: event1.id,
  text_content: "Ai loves nature!",
  vote_count: 0
)
post14.image = File.open("#{Rails.root}/app/assets/images/ai.jpg")
post14.save

post15 = Post.create(
  event_id: event1.id,
  text_content: "Ling er",
  vote_count: 0
)
post15.image = File.open("#{Rails.root}/app/assets/images/linger.jpg")
post15.save

post16 = Post.create(
  event_id: event1.id,
  text_content: "Serena",
  vote_count: 0
)
post16.image = File.open("#{Rails.root}/app/assets/images/serena.jpg")
post16.save

post8 = Post.create(
  event_id: event3.id,
  text_content: "Her voice killed me also saved me.",
  vote_count: 0
)
post8.image = File.open("#{Rails.root}/app/assets/images/adele.jpg")
post8.save

post9 = Post.create(
  event_id: event3.id,
  text_content: "Can't help falling in love with him",
  vote_count: 0,
)
post9.image = File.open("#{Rails.root}/app/assets/images/sam.jpg")
post9.save

user1 = User.create(
  email: 'a@gmail.com',
  password: '88888888',
  password_confirmation: '88888888',
)

user2 = User.create(
  email: 'b@gmail.com',
  password: '88888888',
  password_confirmation: '88888888',
)

user3 = User.create(
  email: 'c@gmail.com',
  password: '88888888',
  password_confirmation: '88888888',
)

user1.created_posts << [post1, post5]
user2.created_posts << [post2, post3, post4]
user3.created_posts << [post6, post7, post8, post9]


user1.voted_posts << [post1, post2, post3, post6, post9, post13, post15]
user2.voted_posts << [post2, post3, post5, post7, post10, post12, post16]
user3.voted_posts << [post1, post2, post3, post4, post8, post11, post14]

user1.organized_events << [event1, event4, event5, event6, event7]
user2.organized_events << [event2, event8, event9, event10]
user3.organized_events << [event3, event11, event12]
