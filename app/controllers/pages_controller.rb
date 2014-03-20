class PagesController < ApplicationController
 skip_before_filter :require_login

  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def admin
    @title = "Administracion"
  end

  def admin
    @title = "Configuracion"
  end
end
