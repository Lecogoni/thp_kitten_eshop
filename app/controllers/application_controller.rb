class ApplicationController < ActionController::Base

  include CurrentCart

  before_action :configure_devise_parameters, if: :devise_controller?
  before_action :set_cart

  def index
  end

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:username, :email, :password, :password_confirmation) }
  end

end
