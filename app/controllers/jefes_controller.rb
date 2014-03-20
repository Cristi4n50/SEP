class JefesController < ApplicationController
  before_action :set_jefe, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  
  def index
    
    if params[:registro] == nil or params[:registro] <= '0' then
        params[:registro] = 5
    end
    if current_user.role == "admin" or current_user.role == "monitor" or current_user.role == "directivo"
      @jefes = Jefe.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i).order("id")
    else
      @jefe = Jefe.find_by_cedula(current_user.username)
      @jefes = Jefe.where(:id => @jefe.id).search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i).order("id")
    end
  end

  def show
    @jefe = Jefe.find(params[:id])
  end

  def new
    authorize! :read, @jefe
    @jefe = Jefe.new
  end

  def edit
    @jefe = Jefe.find(params[:id])
  end

  def create
    @jefe = Jefe.new(jefe_params)
    render :action => :new unless @jefe.save
    User.create(:username => @jefe.cedula, :email => @jefe.email, :password => @jefe.cedula )
  end

  def update
    @jefe = Jefe.find(params[:id])
    render :action => :edit unless @jefe.update_attributes(jefe_params)
     User.create(:username => @jefe.cedula, :email => @jefe.email, :password => @jefe.cedula )
  end

  def destroy
    @jefe = Jefe.find(params[:id])
    @jefe.destroy
  end

  private

  def set_jefe
      @jefe = Jefe.find(params[:id])
  end

  def jefe_params
      params.require(:jefe).permit(:nombres, :apellidos, :cedula, :tipodoc_id, :cargo, :telefono, :email, :empresa_id)
  end
end
