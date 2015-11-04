class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.all || []
  end

  def create
    Post.create post_params
    redirect_to :root
  end

  private

  def post_params
    parts = params.require(:post).permit(:title, :image)
    
    file_upload = parts[:image].tempfile
    parts[:image] = Base64.encode64(file_upload.read)
    parts
  end

end
