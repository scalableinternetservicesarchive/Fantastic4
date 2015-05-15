
event1 = Event.create(
	title: 'School Queen',
	description: 'Vote for the school queen',
	tags: 'School',
  image: File.new("test/fixtures/images/school.jpeg")
)

event2 = Event.create(
	title: 'Best Movie',
	description: 'Vote for the best movie 2014',
	tags: 'Movie',
  image: File.new("test/fixtures/images/movie.jpg")
)

event3 = Event.create(
	title: 'Pop Star',
	description: 'best singer ever',
	tags: 'Music',
  image: File.new("test/fixtures/images/music.png")
)

post1 = Post.create(
  event_id: event1.id,
  text_content: 'Big Hero 6',
  vote_count: 3,
  image: File.new("test/fixtures/images/bighero.jpeg")
)

post2 = Post.create(
  event_id: event2.id,
  text_content: 'Avenger',
  vote_count: 2,
  image: File.new("test/fixtures/images/avenger.jpg")
)

post3 = Post.create(
  event_id: event2.id,
  text_content: 'Harry Potter',
  vote_count: 2,
  image: File.new("test/fixtures/images/1.png")
)

post4 = Post.create(
  event_id: event3.id,
  text_content: 'Transformer',
  vote_count: 1,
  image: File.new("test/fixtures/images/transformer.jpg")
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
