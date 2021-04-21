class PostsController < ApplicationController
  def index
    @new_post = Post.new
    @all_posts = Post.order(created_at: :desc).all
  end

  def create

  end

  private

  def posts_params
    params.require(:post).permit(:comment)
  end
end
