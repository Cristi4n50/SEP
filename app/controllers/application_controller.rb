class ApplicationController < ActionController::Base
  before_filter :require_login, :except => [:not_authenticated]
  protect_from_forgery
  

  private
  def not_authenticated
    redirect_to root_url, :alert => "Debe Registrarse o ingresar"
  end
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end
