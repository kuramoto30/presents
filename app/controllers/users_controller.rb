class UsersController < ApplicationController
  def index; end

  def create; end

  def show 
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @gender = current_user.gender
    @age = current_user.age
    @posts = current_user.posts
  end

  def edit; end

  def update; end

  def destroy; end
end
