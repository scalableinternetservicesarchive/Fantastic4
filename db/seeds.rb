
def user_vote_post(user, post)
  user.voted_posts << [post]
  post.vote_count += 1
  post.save!
end

# ==============================================

# create users

user1 = User.create(
  email: 'demo1@gmail.com',
  password: '88888888',
  password_confirmation: '88888888',
)

user2 = User.create(
  email: 'demo2@gmail.com',
  password: '88888888',
  password_confirmation: '88888888',
)

user3 = User.create(
  email: 'demo3@gmail.com',
  password: '88888888',
  password_confirmation: '88888888',
)

# ==============================================

# create events

event1 = Event.create(
  creator: user1,
  title: "Hot or Not",
  description: "Who is the hottest girl at school?",
  tags: "School"
)
event1.created_at = (rand*100).days.ago
event1.image = File.open("#{Rails.root}/app/assets/images/sydney.jpg")
event1.save

event2 = Event.create(
  creator: user2,
  title: "Best Movie",
  description: "Vote for the best movie on your mind",
  tags: "Movie"
  # image_file_name: "default.jpg"
)
event2.created_at = (rand*100).days.ago
event2.image = File.open("#{Rails.root}/app/assets/images/posters.jpg")
event2.save

event3 = Event.create(
  creator: user3,
  title: "Pop Star",
  description: "Best singer ever!",
  tags: "Music"
)
event3.created_at = (rand*100).days.ago
event3.image = File.open("#{Rails.root}/app/assets/images/american-idol.jpg")
event3.save

event4 = Event.create(
  creator: user1,
  title: 'My Favorite Book!',
  description: "Everyone must have one book that you read again and again. Share it with others now!",
  tags: "Reading"
)
event4.created_at = (rand*100).days.ago
event4.image = File.open("#{Rails.root}/app/assets/images/book.jpg")
event4.save

event5 = Event.create(
  creator: user1,
  title: "Those stressed-related health problems!",
  description: "Studies have found many health problems related to stress. Stress seems to worsen or increase the risk of conditions like obesity, heart disease, Alzheimer's disease, diabetes, depression, gastrointestinal problems, and asthma.",
  tags: "Health"
)
event5.created_at = (rand*100).days.ago
event5.image = File.open("#{Rails.root}/app/assets/images/health.jpg")
event5.save

event6 = Event.create(
  creator: user1,
  title: "Tech Tech",
  description: "Post the technical products that affect your life!",
  tags: "Technology"
)
event6.created_at = (rand*100).days.ago
event6.image = File.open("#{Rails.root}/app/assets/images/tech.jpg")
event6.save

event7 = Event.create(
  creator: user1,
  title: "Amazing musical at school",
  description: "Can't wait to share with people the most amazing musical at your school?",
  tags: "Music"
)
event7.created_at = (rand*100).days.ago
event7.image = File.open("#{Rails.root}/app/assets/images/music.jpg")
event7.save

event8 = Event.create(
  creator: user2,
  title: "Three-line love letter",
  description: "As classic as Sonnet, can you express your love in onle three line?",
  tags: "School"
)
event8.created_at = (rand*100).days.ago
event8.image = File.open("#{Rails.root}/app/assets/images/loveletter.jpg")
event8.save

event9 = Event.create(
  creator: user2,
  title: "Best Teacher 2015",
  description: "Hey Bruins! Two quarters have spent in 2015, do you have your best teacher canate in mind?",
  tags: "School"
)
event9.created_at = (rand*100).days.ago
event9.image = File.open("#{Rails.root}/app/assets/images/teacher.jpg")
event9.save

event10 = Event.create(
  creator: user2,
  title: "Love Movie TOP10",
  description: "Let's select out the really top10 classic love movie and save it for a special time!",
  tags: "Movie"
)
event10.created_at = (rand*100).days.ago
event10.image = File.open("#{Rails.root}/app/assets/images/flipped.jpg")
event10.save

event11 = Event.create(
  creator: user3,
  title: "No.1 IT company",
  description: "As an IT worker, which company is your dream to work for?",
  tags: "Technology"
)
event11.created_at = (rand*100).days.ago
event11.image = File.open("#{Rails.root}/app/assets/images/companies.jpg")
event11.save

event12 = Event.create(
  creator: user3,
  title: "Those amazing OST:)",
  description: "Some music den in the movie or drama, waiting to be discovered and worth cherishing for lifetime.",
  tags: "Music"
)
event12.created_at = (rand*100).days.ago
event12.image = File.open("#{Rails.root}/app/assets/images/star.jpg")
event12.save

# ==============================================
 
post1 = Post.create(
  creator: user1,
  event: event1,
  text_content: "The magical and beautiful lady"
)
post1.image = File.open("#{Rails.root}/app/assets/images/emma-watson.jpg")
post1.event.post_count += 1
post1.event.save!
post1.save

post2 = Post.create(
  creator: user2,
  event: event1,
  text_content: "Jessica's smile is so pretty."
)
post2.image = File.open("#{Rails.root}/app/assets/images/jessica-alba.jpg")
post2.event.post_count += 1
post2.event.save!
post2.save

post3 = Post.create(
  creator: user3,
  event: event1,
  text_content: "Sally is a pretty and kind girl. She never refuses to help anyone!"
)
post3.image = File.open("#{Rails.root}/app/assets/images/sally.jpg")
post3.event.post_count += 1
post3.event.save!
post3.save

post4 = Post.create(
  creator: user1,
  event: event1,
  text_content: "Alex. Straight A student, no need for more talk."
)
post4.image = File.open("#{Rails.root}/app/assets/images/alex.jpg")
post4.event.post_count += 1
post4.event.save!
post4.save

post5 = Post.create(
  creator: user2,
  event: event1,
  text_content: "Annie's smile is the best:)"
)
post5.image = File.open("#{Rails.root}/app/assets/images/annie.jpg")
post5.save

post6 = Post.create(
  creator: user3,
  event: event1,
  text_content: "Haley."
)
post6.image = File.open("#{Rails.root}/app/assets/images/haley.jpg")
post6.event.post_count += 1
post6.event.save!
post6.save

post7 = Post.create(
  creator: user2,
  event: event1,
  text_content: "Ai loves nature!"
)
post7.image = File.open("#{Rails.root}/app/assets/images/ai.jpg")
post7.event.post_count += 1
post7.event.save!
post7.save

post8 = Post.create(
  creator: user1,
  event: event1,
  text_content: "Ling er"
)
post8.image = File.open("#{Rails.root}/app/assets/images/linger.jpg")
post8.event.post_count += 1
post8.event.save!
post8.save

post9 = Post.create(
  creator: user1,
  event: event1,
  text_content: "Serena"
)
post9.image = File.open("#{Rails.root}/app/assets/images/serena.jpg")
post9.event.post_count += 1
post9.event.save!
post9.save

post10 = Post.create(
  creator: user1,
  event: event2,
  text_content: "The Shawshank Redemption(1994)"
)
post10.image = File.open("#{Rails.root}/app/assets/images/shawshank.jpg")
post10.event.post_count += 1
post10.event.save!
post10.save

post11 = Post.create(
  creator: user1,
  event: event2,
  text_content: "The Godfather(1972)",
)
post11.image = File.open("#{Rails.root}/app/assets/images/godfather.jpg")
post11.event.post_count += 1
post11.event.save!
post11.save

post12 = Post.create(
  creator: user2,
  event: event2,
  text_content: "Forrest Gump(1994)"
)
post12.image = File.open("#{Rails.root}/app/assets/images/gump.jpg")
post12.event.post_count += 1
post12.event.save!
post12.save

post13 = Post.create(
  creator: user2,
  event: event2,
  text_content: "Gone Girl(2014)"
)
post13.image = File.open("#{Rails.root}/app/assets/images/gonegirl.jpg")
post13.event.post_count += 1
post13.event.save!
post13.save


post14 = Post.create(
  creator: user3,
  event: event2,
  text_content: "12 Years a Slave(2013)"
)
post14.image = File.open("#{Rails.root}/app/assets/images/slave.jpg")
post14.event.post_count += 1
post14.event.save!
post14.save

post15 = Post.create(
  creator: user3,
  event: event2,
  text_content: "Imitation Game(2014)"
)
post15.image = File.open("#{Rails.root}/app/assets/images/imitation.jpg")
post15.event.post_count += 1
post15.event.save!
post15.save

post16 = Post.create(
  creator: user1,
  event: event2,
  text_content: "Inception(2011)"
)
post16.image = File.open("#{Rails.root}/app/assets/images/inception.jpg")
post16.event.post_count += 1
post16.event.save!
post16.save

post17 = Post.create(
  creator: user1,
  event: event3,
  text_content: "Her voice killed me also saved me."
)
post17.image = File.open("#{Rails.root}/app/assets/images/adele.jpg")
post17.event.post_count += 1
post17.event.save!
post17.save

post18 = Post.create(
  creator: user2,
  event: event3,
  text_content: "Can't help falling in love with him"
)
post18.image = File.open("#{Rails.root}/app/assets/images/sam.jpg")
post18.event.post_count += 1
post18.event.save!
post18.save

user_vote_post(user1, post1)
user_vote_post(user1, post2)
user_vote_post(user1, post3)
user_vote_post(user1, post6)
user_vote_post(user1, post9)
user_vote_post(user1, post13)
user_vote_post(user1, post15)
user_vote_post(user2, post2)
user_vote_post(user2, post3)
user_vote_post(user2, post5)
user_vote_post(user2, post7)
user_vote_post(user2, post10)
user_vote_post(user2, post12)
user_vote_post(user2, post16)
user_vote_post(user3, post1)
user_vote_post(user3, post2)
user_vote_post(user3, post3)
user_vote_post(user3, post4)
user_vote_post(user3, post8)
user_vote_post(user3, post11)
user_vote_post(user3, post14)