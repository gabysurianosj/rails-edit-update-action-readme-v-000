class PostsController < ApplicationController
  def index	  def index
    @posts = Post.all	    @posts = Post.all
@@ -20,4 +21,14 @@ def create
  end	  end
   # add edit and update methods here	  # add edit and update methods here
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(:title => params[:title], description: params[:description])
    @post.save
    redirect_to post_path(@post)
  end
end	end