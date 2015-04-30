Event.delete_all
Post.delete_all


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

Post.create!(
  event_id: event1.id,
  text_content: 'Emma',
  vote_count: 15,
)

Post.create(
  event_id: event1.id,
  text_content: 'Julia',
  vote_count: 12,
)

Post.create(
  event_id: event2.id,
  text_content: 'Harry Potter',
  vote_count: 80,
)

Post.create(
  event_id: event3.id,
  text_content: 'Adele',
  vote_count: 20,
)

