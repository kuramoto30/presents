class UsersController < ApplicationController
  def index; end

  def create; end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("id DESC")
  end

  def edit; end

  def update; end

  def destroy; end
end
