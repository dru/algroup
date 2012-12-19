class PostsController < ApplicationController
  def index
    @posts = Post.order(:created_at).all
  end

  def show
    @post = Post.find(params[:id])
  end
end
