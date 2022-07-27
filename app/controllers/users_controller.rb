class UsersController < ApplicationController
  def index; end

  def create; end

  def show
    @user = User.find(params[:id])
    keeps = Keep.where(user_id: @user.id).pluck("post_id DESC")
    @keep_posts = Post.find(keeps)
    @posts = @user.posts.order("id DESC")
  end

  def edit; end

  def update; end

  def destroy; end
end
