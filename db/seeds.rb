num_of_users = 100
num_of_event_per_user = 10
num_of_post_per_event_per_user = 5
num_of_posts = num_of_users*num_of_event_per_user*num_of_post_per_event_per_user
num_of_votes_per_user = 50

tagArray = ["School", "Movie", "Music", "Technology","Reading", "Health"]
userArray = Array.new
postArray = Array.new
# image_file = File.open("#{Rails.root}/app/assets/images/sydney.jpg")

def user_vote_post(user, post)
  user.voted_posts << [post]
  post.vote_count += 1
  post.save!
end

num_of_users.times do |u|
  # create user
  user = User.create!(
    email: "fantastic"+u.to_s+"@gmail.com", 
    password: "00000000", 
    password_confirmation: "00000000"
  )
  userArray.push(user)

  # each user create 10 events
  num_of_event_per_user.times do |e|
    event = Event.create!(
      creator: user, 
      title: "title-"+ u.to_s + "-" + e.to_s, 
      description: Faker::Lorem.paragraph, 
      tags: tagArray[rand(6)]
    )
    event.created_at = (rand*100).days.ago
    # event.image = image_file
    event.save!

    # each user create 5 posts on each event he created
    num_of_post_per_event_per_user.times do |p|
      post = Post.create(
        creator: user,
        event: event,
        text_content: Faker::Lorem.paragraph, 
      )
      post.created_at = (rand*100).days.ago
      # post.image = image_file

      # increment post_count in the event it belongs to
      post.event.post_count += 1
      post.event.save!

      postArray.push(post)
      post.save!
    end
  end
end

count_posts = postArray.count
num_of_users.times do |u|
  num_of_votes_per_user.times do |p|
    user = userArray[u]
    post = postArray[rand(count_posts)]

    user_vote_post(user, post)
  end
end

# image_file.close