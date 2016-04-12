class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


 # Make the controller method available in the views
 helper_method :current_user

 def record_not_found
    redirect_to action: :index
  end

  def current_user
    return unless session[:user_id].present?

    User.find(session[:user_id])
  end
end
