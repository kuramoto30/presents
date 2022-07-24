class KeepsController < ApplicationController

def create
  current_user.keeps.create!(post_id: params[:post_id])
  redirect_back(fallback_location: root_path)
end
    
def destroy
  current_user.keeps.find_by(post_id: params[:post_id]).destroy!
  redirect_back(fallback_location: root_path)
end
    
end
