class MypagesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @gender = current_user.gender
    @age = current_user.age
    @posts = current_user.posts
  end
end
