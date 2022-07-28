class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search
  PER_PAGE = 10
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[nickname gender age])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[nickname gender age])
  end

  def set_search
    @q = Post.ransack(params[:q])
    @posts = @q.result.page(params[:page]).per(PER_PAGE).limit(20)
  end

end
