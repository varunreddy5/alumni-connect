class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  # protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pagy::Backend
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :avatar])
  end
end
