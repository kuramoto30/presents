class PostsController < ApplicationController
  before_action :set_search
  before_action :set_post, only: %i[show edit update destroy]
  PER_PAGE = 7

  def index
    @posts = Post.includes(:user, :keeps).order(:created_at).page(params[:page]).per(PER_PAGE)
    @q = Post.ransack(params[:q])
    @posts = @q.result.page(params[:page]).per(PER_PAGE)
  end

  def new
    @post = Post.new
  end

  def create
    post = current_user.posts.create!(post_params)
    redirect_to post
  end

  def show
    
  end

  def edit
  end

  def update
    @post.update!(post_params)
    redirect_to post_path
  end

  def destroy
    @post.destroy!
    redirect_to root_path
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:present_name, :present_score, :present_review)
  end
end
