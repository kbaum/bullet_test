class UserPostsController < ApplicationController
  def index
    @posts = User.find_by_username!(params[:user_id]).posts
  end
end
