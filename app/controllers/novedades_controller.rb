class NovedadesController < ApplicationController
  before_action :set_novedad, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  
  def index
    
    @novedades = Novedad.all
  end

  def show
    @novedad = Novedad.find(params[:id]) 
  end

  def new
    @novedad = Novedad.new
  end

  def edit
    @novedad = Novedad.find(params[:id])
  end

  def create
    @novedad = Novedad.new(novedad_params)
    render :action => :new unless @novedad.save
  end

  def update
    @novedad = Novedad.find(params[:id])
    render :action => :edit unless @novedad.update_attributes(novedad_params)
    
  end

  def destroy
    @novedad = Novedad.find(params[:id])
    @novedad.destroy
  end

  private

  def set_novedad
    @novedad = Novedad.find(params[:id])
  end

  def novedad_params
    params.require(:novedad).permit(:fecha_ocurrencia, :descripcion, :implicados, :user_id, :actestado_id)
  end
end
