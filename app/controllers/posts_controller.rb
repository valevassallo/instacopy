class PostsController < ApplicationController
  def index
    @posts = Post.includes([:user, :media, comments: [:user], likes: [:user]]).all
  end


end