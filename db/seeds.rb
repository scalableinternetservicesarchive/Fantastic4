<<<<<<< HEAD
=======
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

# ==============================================

>>>>>>> master
event1 = Event.create(
  creator: user1,
  title: "Hot or Not",
  description: "Who is the hottest girl at school?",
  tags: "School"
  # image_file_name: "default.jpg"
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
  event: event2,
  text_content: "The Shawshank Redemption(1994)"
  # image: URI.parse("http://www.impawards.com/1994/posters/shawshank_redemption_ver1.jpg")
)
post1.image = File.open("#{Rails.root}/app/assets/images/shawshank.jpg")
post1.save

post2 = Post.create(
  creator: user1,
  event: event2,
  text_content: "The Godfather(1972)",
)
post2.image = File.open("#{Rails.root}/app/assets/images/godfather.jpg")
post2.save

post3 = Post.create(
  creator: user2,
  event: event2,
  text_content: "Forrest Gump(1994)"
  # image: URI.parse("http://upload.wikimedia.org/wikipedia/en/6/67/Forrest_Gump_poster.jpg")
)
post3.image = File.open("#{Rails.root}/app/assets/images/gump.jpg")
post3.save

post4 = Post.create(
  creator: user2,
  event: event2,
  text_content: "Gone Girl(2014)"
  # image: URI.parse("")
)
post4.image = File.open("#{Rails.root}/app/assets/images/gonegirl.jpg")
post4.save


post5 = Post.create(
  creator: user2,
  event: event1,
  text_content: "Annie's smile is the best:)"
  # image: URI.parse("")
)
post5.image = File.open("#{Rails.root}/app/assets/images/annie.jpg")
post5.save

post6 = Post.create(
  creator: user3,
  event: event1,
  text_content: "Sally is a pretty and kind girl. She never refuses to help anyone!"
  # image: URI.parse("")
)
post6.image = File.open("#{Rails.root}/app/assets/images/sally.jpg")
post6.save

post7 = Post.create(
  creator: user1,
  event: event1,
  text_content: "Alex. Straight A student, no need for more talk."
  # image: URI.parse("")
)
post7.image = File.open("#{Rails.root}/app/assets/images/alex.jpg")
post7.save

post8 = Post.create(
  creator: user1,
  event: event3,
  text_content: "Her voice killed me also saved me."
  # image: URI.parse("http://kopr94.net/wp-content/uploads/sites/2/2014/12/Adele.jpg")
)
post8.image = File.open("#{Rails.root}/app/assets/images/adele.jpg")
post8.save

post9 = Post.create(
  creator: user2,
  event: event3,
  text_content: "Can't help falling in love with him"
  #image: URI.parse("http://www.okayplayer.com/wp-content/uploads/2014/01/sam-smith-in-the-lonely-hour-track-list-album-cover.jpg")
)
post9.image = File.open("#{Rails.root}/app/assets/images/sam.jpg")
post9.save

post10 = Post.create(
  creator: user3,
  event: event2,
  text_content: "12 Years a Slave(2013)"
  # image: URI.parse("")
)
post10.image = File.open("#{Rails.root}/app/assets/images/slave.jpg")
post10.save

post11 = Post.create(
  creator: user3,
  event: event2,
  text_content: "Imitation Game(2014)"
  # image: URI.parse("")
)
post11.image = File.open("#{Rails.root}/app/assets/images/imitation.jpg")
post11.save

post12 = Post.create(
  creator: user1,
  event: event2,
  text_content: "Inception(2011)"
  # image: URI.parse("")
)
post12.image = File.open("#{Rails.root}/app/assets/images/inception.jpg")
post12.save

post13 = Post.create(
  creator: user3,
  event: event1,
  text_content: "Haley."
  # image: URI.parse("")
)
post13.image = File.open("#{Rails.root}/app/assets/images/haley.jpg")
post13.save

post14 = Post.create(
  creator: user2,
  event: event1,
  text_content: "Ai loves nature!"
  # image: URI.parse("")
)
post14.image = File.open("#{Rails.root}/app/assets/images/ai.jpg")
post14.save

post15 = Post.create(
  creator: user1,
  event: event1,
  text_content: "Ling er"
  # image: URI.parse("")
)
post15.image = File.open("#{Rails.root}/app/assets/images/linger.jpg")
post15.save

post16 = Post.create(
  creator: user1,
  event: event1,
  text_content: "Serena"
  # image: URI.parse("")
)
post16.image = File.open("#{Rails.root}/app/assets/images/serena.jpg")
post16.save




def user_vote_post(user, post)
  user.voted_posts << [post]
  post.vote_count += 1
  post.save!
end

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


# user1.organized_events << [event1, event4, event5, event6, event7]
# user2.organized_events << [event2, event8, event9, event10]
# user3.organized_events << [event3, event11, event12]
