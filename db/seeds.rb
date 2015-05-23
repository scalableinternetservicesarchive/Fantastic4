
event1 = Event.create(
	title: "Hot or Not",
	description: "Who is the hottest girl at school?",
	tags: "School",
  # image: URI.parse("http://www.beliefnet.com/columnists/moviemom/files/import/sydney.jpg")
)
event1.created_at = (rand*100).days.ago
event1.create_from_url("http://www.beliefnet.com/columnists/moviemom/files/import/sydney.jpg")
event1.save
#event1.image = URI.parse("http://www.google.com/images/logos/ps_logo2.png")
# event1.create_from_url("http://www.google.com/images/logos/ps_logo2.png")
# event1.save

event2 = Event.create(
	title: "Best Movie",
	description: "Vote for the best movie on your mind",
	tags: "Movie",
)
event2.created_at = (rand*100).days.ago
event2.create_from_url("http://static.tumblr.com/1e0391ef51a1f50ab21624884fa3ca08/tlicrj7/RXwn3hi5a/tumblr_static_best-posters-of-all-time.jpg")
event2.save

event3 = Event.create(
	title: "Pop Star",
	description: "Best singer ever!",
	tags: "Music",
  # image: URI.parse("http://images.mstarz.com/data/images/full/13694/american-idol.jpg")
  #image: File.open("#{Rails.root}/test/fixtures/images/music.png")
)
event3.created_at = (rand*100).days.ago
event3.create_from_url("http://images.mstarz.com/data/images/full/13694/american-idol.jpg")
event3.save

event4 = Event.create(
	title: 'My Favorite Book!',
	description: "Everyone must have one book that you read again and again. Share it with others now!",
	tags: "Reading",
  # image: URI.parse("http://4.bp.blogspot.com/--UOeLKgD6rI/VVIXfCKV-5I/AAAAAAAAKnQ/o52nEuR031k/s1600/2e0802bd2bd308779697dc28db9cfb76.jpg")
)
event4.created_at = (rand*100).days.ago
event4.create_from_url("http://4.bp.blogspot.com/--UOeLKgD6rI/VVIXfCKV-5I/AAAAAAAAKnQ/o52nEuR031k/s1600/2e0802bd2bd308779697dc28db9cfb76.jpg")
event4.save

event5 = Event.create(
	title: "Those stressed-related health problems!",
	description: "Studies have found many health problems related to stress. Stress seems to worsen or increase the risk of conditions like obesity, heart disease, Alzheimer's disease, diabetes, depression, gastrointestinal problems, and asthma.",
	tags: "Health",
  # image: URI.parse("http://www.cfah.org/hbns/images/070312mentalhealth.jpg")
)
event5.created_at = (rand*100).days.ago
event5.create_from_url("http://www.cfah.org/hbns/images/070312mentalhealth.jpg")
event5.save

event6 = Event.create(
	title: "Tech Tech",
	description: "Post the technical products that affect your life!",
	tags: "Technology"
)
event6.created_at = (rand*100).days.ago
event6.create_from_url("http://wallpapers111.com/wp-content/uploads/2015/05/Apple-Logo-Wallpapers-5.jpg")
event6.save

event7 = Event.create(
	title: "Amazing musical at school",
	description: "Can't wait to share with people the most amazing musical at your school?",
	tags: "Music"
)
event7.created_at = (rand*100).days.ago
event7.create_from_url("http://images.vcpost.com/data/images/full/33734/is-high-school-musical-4-happening.jpg")
event7.save

event8 = Event.create(
	title: "Three-line love letter",
	description: "As classic as Sonnet, can you express your love in onle three line?",
	tags: "School"
)
event8.created_at = (rand*100).days.ago
event8.create_from_url("http://weeva.com/blog/wp-content/uploads/2015/02/rose-love-letter.jpg")
event8.save

event9 = Event.create(
	title: "Best Teacher 2015",
	description: "Hey Bruins! Two quarters have spent in 2015, do you have your best teacher candidate in mind?",
	tags: "School"
)
event9.created_at = (rand*100).days.ago
event9.create_from_url("http://tu.rrsub.com:8014/ftp/2015/0326/18841d05427c02e68f601837ae6e6a62.jpg")
event9.save

event10 = Event.create(
	title: "Love Movie TOP10",
	description: "Let's select out the really top10 classic love movie and save it for a special time!",
	tags: "Movie"
)
event10.created_at = (rand*100).days.ago
event10.create_from_url("http://3.bp.blogspot.com/-VFdpsR2xcHs/ThJ_yHW6-ZI/AAAAAAAABJU/sDZxAwX_Xow/s1600/FlippedPoster.jpg")
event10.save

event11 = Event.create(
	title: "No.1 IT company",
	description: "As an IT worker, which company is your dream to work for?",
	tags: "Technology"
)
event11.created_at = (rand*100).days.ago
event11.create_from_url("http://www.solver.com/files/assets/img/companies.jpg")
event11.save

event12 = Event.create(
	title: "Those amazing OST:)",
	description: "Some music hidden in the movie or drama, waiting to be discovered and worth cherishing for lifetime.",
	tags: "Music"
)
event12.created_at = (rand*100).days.ago
event12.create_from_url("http://static.statickksmg.com/image/2014/01/25/383d0ad2dd6be818f4768fdb0ec3a040.jpg")
event12.save

post1 = Post.create(
  event_id: event2.id,
  text_content: "The Shawshank Redemption(1994)",
  vote_count: 7,
  # image: URI.parse("http://www.impawards.com/1994/posters/shawshank_redemption_ver1.jpg")
)
post1.create_from_url("http://www.impawards.com/1994/posters/shawshank_redemption_ver1.jpg")
post1.save

post2 = Post.create(
  event_id: event2.id,
  text_content: 'The Godfather(1972)',
  vote_count: 5,
  # image: URI.parse("http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX640_SY720_.jpg")
)
post2.create_from_url("http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_SX640_SY720_.jpg")
post2.save

post3 = Post.create(
  event_id: event2.id,
  text_content: 'Forrest Gump(1994)',
  vote_count: 3,
  # image: URI.parse("http://upload.wikimedia.org/wikipedia/en/6/67/Forrest_Gump_poster.jpg")
)
post3.create_from_url("http://upload.wikimedia.org/wikipedia/en/6/67/Forrest_Gump_poster.jpg")
post3.save

post4 = Post.create(
  event_id: event2.id,
  text_content: 'Gone Girl(2014)',
  vote_count: 2,
  # image: URI.parse("")
)
post4.create_from_url("http://ia.media-imdb.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_SX640_SY720_.jpg")
post4.save

post10 = Post.create(
  event_id: event2.id,
  text_content: '12 Years a Slave(2013)',
  vote_count: 2,
  # image: URI.parse("")
)
post10.create_from_url("http://cdn2.hubspot.net/hub/94958/file-1763390953-jpg/12-years-a-slave.jpg")
post10.save

post11 = Post.create(
  event_id: event2.id,
  text_content: 'Imitation Game(2014)',
  vote_count: 6,
  # image: URI.parse("")
)
post11.create_from_url("http://upload.wikimedia.org/wikipedia/en/5/5e/The_Imitation_Game_poster.jpg")
post11.save

post12 = Post.create(
  event_id: event2.id,
  text_content: 'Inception(2011)',
  vote_count: 10,
  # image: URI.parse("")
)
post12.create_from_url("https://c1.staticflickr.com/5/4040/4561225293_088ac3c891_z.jpg")
post12.save

post5 = Post.create(
  event_id: event1.id,
  text_content: "Annie's smile is the best:)",
  vote_count: 19,
  # image: URI.parse("")
)
post5.create_from_url("https://s-media-cache-ak0.pinimg.com/236x/df/a4/1a/dfa41af5c0f1ebe2d1ea0f2c20ca7751.jpg")
post5.save

post6 = Post.create(
  event_id: event1.id,
  text_content: "Sally is a pretty and kind girl. She never refuses to help anyone!",
  vote_count: 18,
  # image: URI.parse("")
)
post6.create_from_url("http://studiobportraits.com/blog/wp-content/uploads/2012/09/Outdoor-senior-pictures-of-pretty-Issaquah-High-School-girl-at-Studio-B-Seniors.jpg")
post6.save

post7 = Post.create(
  event_id: event1.id,
  text_content: "Alex. Straight A student, no need for more talk.",
  vote_count: 15,
  # image: URI.parse("")
)
post7.create_from_url("http://images.tenplay.com.au/~/media/The%20Insider%20blog/Article%20images/Modern%20Family%20100%20Episodes/ModernFamily_S5_About_ArielWinter_small.jpg")
post7.save

post13 = Post.create(
  event_id: event1.id,
  text_content: "Alex's sister.",
  vote_count: 17,
  # image: URI.parse("")
)
post13.create_from_url("http://www.usanetwork.com/sites/usanetwork/files/styles/1400_wide/public/modern_charactergallery_haley_05.jpg?itok=M6w_XQx3")
post13.save

post14 = Post.create(
  event_id: event1.id,
  text_content: "Ai loves nature!",
  vote_count: 12,
  # image: URI.parse("")
)
post14.create_from_url("http://img.desktopsky.com/uploads/allimg/120801/Ai-Shinozaki-desktopsky_97384.jpg")
post14.save

post15 = Post.create(
  event_id: event1.id,
  text_content: "Ling er",
  vote_count: 11,
  # image: URI.parse("")
)
post15.create_from_url("http://u.thsi.cn/2011/11/24/114302807_1322097823_-1408237429_d2000e3f9255a7e3.jpg")
post15.save

post16 = Post.create(
  event_id: event1.id,
  text_content: "Serena",
  vote_count: 16,
  # image: URI.parse("")
)
post16.create_from_url("http://images1.fanpop.com/images/photos/1300000/Serena-serena-van-der-woodsen-1343881-858-1222.jpg")
post16.save

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

user1.voted_posts << [post1, post2, post3, post6, post9, post13, post15]
user2.voted_posts << [post2, post3, post5, post7, post10, post12, post16]
user3.voted_posts << [post1, post2, post3, post4, post8, post11, post14]

user1.organized_events << [event1, event4, event5, event6, event7]
user2.organized_events << [event2, event8, event9, event10]
user3.organized_events << [event3, event11, event12]
