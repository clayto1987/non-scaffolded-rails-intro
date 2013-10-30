class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end #loads app/views/posts/index.html.erb

  def show
    @post = Post.find(params[:id])
  end #loads app/views/posts/show.html.erb
end
