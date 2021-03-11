class ApplicationController < ActionController::Base

  # french idioma
  before_action do
    I18n.locale = :fr
  end

  include CurrentCart

  before_action :configure_devise_parameters, if: :devise_controller?
  before_action :set_cart

  def index
  end

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:username, :email, :password, :password_confirmation) }
  end

end
