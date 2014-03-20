class SessionsController < ApplicationController
  skip_before_filter :require_login, :except => [:destroy]
  def new
  end

  def create
  	user = login(params[:username], params[:password], params[:remember_me])
    if user
      redirect_back_or_to :home, :alert => "Ingreso Satisfactorio"
    else
      redirect_to :root, :alert => "Usuario o Contraseña erroneos"
    end
  end

  def destroy
  	logout
    redirect_to :root, :alert => "Sesion Terminada"
  end
end