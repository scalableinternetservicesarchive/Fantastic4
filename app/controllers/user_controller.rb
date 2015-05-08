class UserController < ApplicationController
  def show_organized_events
    @organized_events = current_user.organized_events
  end
  
  def show_voted_posts
    @voted_posts = current_user.voted_posts
  end
  
  def show
  end
  
end
