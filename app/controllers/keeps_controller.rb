class KeepsController < ApplicationController

def create
  current_user.keeps.create!(post_id: params[:post_id])
  @post = Post.find(params[:post_id])
end
    
def destroy
  current_user.keeps.find_by(post_id: params[:post_id]).destroy!
  @post = Post.find(params[:post_id])
end
    
end
