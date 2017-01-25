class PostsController < ApplicationController

  before_action :set_post, [:show, :edit, :destroy]

  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to @post, notice: 'Your post was created successfully'
    else
      render :new
    end
  end

  def show

  end

  private

  def post_params
    params.require(:post).permit(:rationale, :date)
  end

  def set_post
    @post = Post.where(id: params[:id])
  end
end
