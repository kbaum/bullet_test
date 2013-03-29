class PostsController < ApplicationController
  def index
    @posts = Post.scoped.includes(:comments)
  end
end
