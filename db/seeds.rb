
event1 = Event.create(
	title: 'School Queen',
	description: 'Vote for the school queen',
	tags: 'School Life',
)

event2 = Event.create(
	title: 'Best Movie',
	description: 'Vote for the best movie 2014',
	tags: 'Movie',
)

event3 = Event.create(
	title: 'Pop Star',
	description: 'best singer ever',
	tags: 'Music',
)

post1 = Post.create(
  event_id: event1.id,
  text_content: 'Emma',
  vote_count: 3,
)

post2 = Post.create(
  event_id: event1.id,
  text_content: 'Julia',
  vote_count: 2,
)

post3 = Post.create(
  event_id: event2.id,
  text_content: 'Harry Potter',
  vote_count: 2,
)

post4 = Post.create(
  event_id: event3.id,
  text_content: 'Adele',
  vote_count: 1,
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

user1.voted_posts << [post1, post3]
user2.voted_posts << [post1, post2]
user3.voted_posts << [post1, post2, post3, post4]

