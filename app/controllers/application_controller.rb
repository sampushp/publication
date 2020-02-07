class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    flash[:warning] = exception.message
    redirect_to root_path
  end

  rescue_from ActionController::InvalidAuthenticityToken do |exception|
    flash[:warning] = "Invalid Session"
    redirect_to root_path
  end

end