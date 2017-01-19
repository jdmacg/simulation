class Admin::ApplicationController < ActionController::Base
  before_action :require_admin
  protect_from_forgery with: :exception

  # Methods omitted

  def require_admin
    unless current_user.admin?
      redirect_to root_path
    end
  end

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
