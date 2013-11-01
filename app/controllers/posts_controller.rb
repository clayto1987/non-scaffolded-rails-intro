class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end #loads app/views/posts/index.html.erb

  def show
    @post = Post.find(params[:id])
  end #loads app/views/posts/show.html.erb

  def new
    @post = Post.new
  end #loads app/views/posts/new.html.erb

  def create
    @post = Post.new(params[:post])

    if @post.save
      #redirect to index action
      redirect_to :action => :index #redirects to new page and leaves state forgetting everything in @post
    else
      #@post.title = "" #removes title prior to putting things back in the form
      #load up the view associated with the new action
      render :action => :new #keeps state and remembers @post and puts the data back into the form
    end
  end #On success redirects to index else uses app/views/posts/new.html.erb

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :action => :index
  end #No destroy.html.erb needs to exist, we always redirect

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    #@post.title = params[:title]
    #@post.content = params[:content]
    @post.update_attributes(params[:post])
    if @post.save
      #redirect to index action
      redirect_to :action => :index #redirects to new page and leaves state forgetting everything in @post
    else
      #@post.title = "" #removes title prior to putting things back in the form
      #load up the view associated with the new action
      render :action => :edit #keeps state and remembers @post and puts the data back into the form
    end
  end
end
