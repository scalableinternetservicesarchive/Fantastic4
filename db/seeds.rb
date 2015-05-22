
event1 = Event.create(
	title: 'School Queen',
	description: 'Vote for the school queen',
	tags: 'School',
  #image: URI.parse("http://www.google.com/images/logos/ps_logo2.png")
)
#event1.image = URI.parse("http://www.google.com/images/logos/ps_logo2.png")
event1.create_from_url("http://www.google.com/images/logos/ps_logo2.png")
event1.save

event2 = Event.create(
	title: 'Best Movie',
	description: 'Vote for the best movie 2014',
	tags: 'Movie',
  #image: File.open("#{Rails.root}/test/fixtures/images/movie.jpg")
)

event3 = Event.create(
	title: 'Pop Star',
	description: 'best singer ever',
	tags: 'Music',
  #image: File.open("#{Rails.root}/test/fixtures/images/music.png")
)

post1 = Post.create(
  event_id: event2.id,
  text_content: 'Big Hero 6',
  vote_count: 3,
  #image: File.open("#{Rails.root}/test/fixtures/images/bighero.jpeg")
)

post2 = Post.create(
  event_id: event2.id,
  text_content: 'Avenger',
  vote_count: 2,
  #image: File.open("#{Rails.root}/test/fixtures/images/avenger.jpg")
)

post3 = Post.create(
  event_id: event2.id,
  text_content: 'Harry Potter',
  vote_count: 2,
  #image: File.open("#{Rails.root}/test/fixtures/images/1.png")
)

post4 = Post.create(
  event_id: event2.id,
  text_content: 'Transformer',
  vote_count: 1,
  #image: File.open("#{Rails.root}/test/fixtures/images/transformer.jpg")
)

post5 = Post.create(
  event_id: event1.id,
  text_content: 'queen 1',
  vote_count: 0,
  #image: File.open("#{Rails.root}/test/fixtures/images/sd1.jpg")
)

post6 = Post.create(
  event_id: event1.id,
  text_content: 'queen 2',
  vote_count: 0,
  #image: File.open("#{Rails.root}/test/fixtures/images/sd2.jpg")
)

post7 = Post.create(
  event_id: event1.id,
  text_content: 'queen 3',
  vote_count: 0,
  #image: File.open("#{Rails.root}/test/fixtures/images/sd3.jpg")
)

post8 = Post.create(
  event_id: event3.id,
  text_content: 'Music',
  vote_count: 0,
  #image: File.open("#{Rails.root}/test/fixtures/images/musicpost.jpg")
)

user1 = User.create(
  email: 'a@a.com',
  password: '88888888',
  password_confirmation: '88888888',
)

user2 = User.create(
  email: 'b@b.com',
  password: '88888888',
  password_confirmation: '88888888',
)

user3 = User.create(
  email: 'c@c.com',
  password: '88888888',
  password_confirmation: '88888888',
)

user1.created_posts << [post2]
user2.created_posts << [post3]
user3.created_posts << [post1, post4]

user1.voted_posts << [post1, post3]
user2.voted_posts << [post1, post2]
user3.voted_posts << [post1, post2, post3, post4]

user1.organized_events << [event1]
user2.organized_events << [event1, event2]
user3.organized_events << [event3]
