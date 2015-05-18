class UserController < ApplicationController
  def show
    if current_user != nil
      @organized_events = current_user.organized_events
      @voted_posts = current_user.voted_posts
      @created_posts = current_user.created_posts
    else
      @organized_events = []
      @voted_posts = []
      @created_posts = []
    end
    
    if params[:voted_posts]
      @posts = Post.find(params[:voted_posts])
    else
      @posts = []
    end
  end
  
  def show_organized_events
    if current_user != nil
      @organized_events = current_user.organized_events
    else
      @organized_events = []
    end
  end
  

  def show_voted_events
    if current_user != nil
      @voted_posts = current_user.voted_posts
    else
      @voted_posts = []
    end
  end

  def show_created_posts
    if current_user != nil
      @created_posts = current_user.created_posts
    else
      @created_posts = []
    end
  end
  
  
  def show_voted_posts
    @posts = Post.find(params[:voted_posts])
  end
  
end
