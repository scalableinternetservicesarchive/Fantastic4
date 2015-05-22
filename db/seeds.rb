
event1 = Event.create(
	title: "Hot or Not",
	description: "Who is the hottest girl at school?",
	tags: "School",
  image: URI.parse("http://www.beliefnet.com/columnists/moviemom/files/import/sydney.jpg")
)
event1.created_at = (rand*100).days.ago
event1.save
#event1.image = URI.parse("http://www.google.com/images/logos/ps_logo2.png")
# event1.create_from_url("http://www.google.com/images/logos/ps_logo2.png")
# event1.save

event2 = Event.create(
	title: "Best Movie",
	description: "Vote for the best movie on your mind",
	tags: "Movie",
  image: URI.parse("http://static.tumblr.com/1e0391ef51a1f50ab21624884fa3ca08/tlicrj7/RXwn3hi5a/tumblr_static_best-posters-of-all-time.jpg")
)
event2.created_at = (rand*100).days.ago
event2.save

event3 = Event.create(
	title: "Pop Star",
	description: "Best singer ever!",
	tags: "Music",
  image: URI.parse("http://images.mstarz.com/data/images/full/13694/american-idol.jpg")
  #image: File.open("#{Rails.root}/test/fixtures/images/music.png")
)
event3.created_at = (rand*100).days.ago
event3.save

event4 = Event.create(
	title: 'My Favorite Book!',
	description: "Everyone must have one book that you read again and again. Share it with others now!",
	tags: "Reading",
  image: URI.parse("http://4.bp.blogspot.com/--UOeLKgD6rI/VVIXfCKV-5I/AAAAAAAAKnQ/o52nEuR031k/s1600/2e0802bd2bd308779697dc28db9cfb76.jpg")
)
event4.created_at = (rand*100).days.ago
event4.save

event5 = Event.create(
	title: "Those stressed-related health problems!",
	description: "Studies have found many health problems related to stress. Stress seems to worsen or increase the risk of conditions like obesity, heart disease, Alzheimer's disease, diabetes, depression, gastrointestinal problems, and asthma.",
	tags: "Health",
  image: URI.parse("http://www.cfah.org/hbns/images/070312mentalhealth.jpg")
)
event5.created_at = (rand*100).days.ago
event5.save

event6 = Event.create(
	title: "Tech Tech",
	description: "Post the technical products that affect your life!",
	tags: "Technology",
  image: URI.parse("http://wallpapers111.com/wp-content/uploads/2015/05/Apple-Logo-Wallpapers-5.jpg")
)
event6.created_at = (rand*100).days.ago
event6.save

event7 = Event.create(
	title: "Amazing musical at school",
	description: "Share with people the most amazing musical at your school",
	tags: "Music",
  image: URI.parse("http://images.vcpost.com/data/images/full/33734/is-high-school-musical-4-happening.jpg")
)
event7.created_at = (rand*100).days.ago
event7.save

post1 = Post.create(
  event_id: event2.id,
  text_content: "The Shawshank Redemption(1994) - Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
  vote_count: 7,
  image: URI.parse("http://www.impawards.com/1994/posters/shawshank_redemption_ver1.jpg")
)

post2 = Post.create(
  event_id: event2.id,
  text_content: 'The Godfather(1972) - The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son',
  vote_count: 5,
  image: URI.parse("http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX640_SY720_.jpg")
)

post3 = Post.create(
  event_id: event2.id,
  text_content: 'Forrest Gump(1994) - Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.',
  vote_count: 3,
  image: URI.parse("http://upload.wikimedia.org/wikipedia/en/6/67/Forrest_Gump_poster.jpg")
)

post4 = Post.create(
  event_id: event2.id,
  text_content: 'Gone Girl(2014) - This woman shocked me!!',
  vote_count: 2,
  image: URI.parse("http://ia.media-imdb.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX640_SY720_.jpg")
)

post5 = Post.create(
  event_id: event1.id,
  text_content: "Annie's smile is the best:)",
  vote_count: 19,
  image: URI.parse("https://s-media-cache-ak0.pinimg.com/236x/df/a4/1a/dfa41af5c0f1ebe2d1ea0f2c20ca7751.jpg")
)

post6 = Post.create(
  event_id: event1.id,
  text_content: "Sally is a pretty and kind girl. She never refuses to help anyone!",
  vote_count: 18,
  image: URI.parse("http://studiobportraits.com/blog/wp-content/uploads/2012/09/Outdoor-senior-pictures-of-pretty-Issaquah-High-School-girl-at-Studio-B-Seniors.jpg")
)

post7 = Post.create(
  event_id: event1.id,
  text_content: "Alex. Straight A student, no need for more talk.",
  vote_count: 15,
  image: URI.parse("http://images.tenplay.com.au/~/media/The%20Insider%20blog/Article%20images/Modern%20Family%20100%20Episodes/ModernFamily_S5_About_ArielWinter_small.jpg")
)

post8 = Post.create(
  event_id: event3.id,
  text_content: "Her voice killed me also saved me.",
  vote_count: 22,
  image: URI.parse("http://kopr94.net/wp-content/uploads/sites/2/2014/12/Adele.jpg")
)

post9 = Post.create(
  event_id: event3.id,
  text_content: "Can't help falling in love with him",
  vote_count: 19,
  image: URI.parse("http://www.okayplayer.com/wp-content/uploads/2014/01/sam-smith-in-the-lonely-hour-track-list-album-cover.jpg")
)

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

user1.voted_posts << [post1, post2, post3, post6, post9]
user2.voted_posts << [post2, post3, post5, post7]
user3.voted_posts << [post1, post2, post3, post4, post8]

user1.organized_events << [event1,event4]
user2.organized_events << [event2]
user3.organized_events << [event3]
