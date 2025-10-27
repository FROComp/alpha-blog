class ApplicationController < ActionController::Base
  include SessionsHelper
  helper_method :current_user, :logged_in?

  def require_user
    unless logged_in?
      flash[:alert] = "You must be logged in to perform that action"
      redirect_to login_path
    end
  end
end
