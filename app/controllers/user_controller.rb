class UserController < ApplicationController
  def show_organized_events
    @organized_events = current_user.organized_events
  end
end
