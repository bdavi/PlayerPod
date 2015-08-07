class ApplicationController < ActionController::Base
  include Pundit

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to view this page."
    redirect_to root_path
  end

  # Set default home page after signing in
  def after_sign_in_path_for(resource)
    subscriptions_path
  end
end
