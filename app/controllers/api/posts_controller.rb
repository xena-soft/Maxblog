class Api::PostsController < ApplicationController

  def index
    @posts = Post.order(published_at: :desc).paginate(:page => params[:page], :per_page => '10')
    render json: @posts
  end

  def create
    @post = Post.new post_params
    if @post.save
      render json: @post
    else
      render json: { 'errors': @post.errors.full_messages }
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :published_at, :author_id)
  end

end