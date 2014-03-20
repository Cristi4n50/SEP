class TitulacionesController < ApplicationController
  before_action :set_titulacion, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  
  def index
    
    @titulaciones = Titulacion.all
  end

  def show
    @titulacion = Titulacion.find(params[:id])
  end

  def new
    @titulacion = Titulacion.new
  end

  def edit
   @titulacion = Titulacion.find(params[:id])
  end

  def create
    @titulacion = Titulacion.new(titulacion_params)
    render :action => :new unless @titulacion.save
  end

  def update
    @titulacion = Titulacion.find(params[:id])
    render :action => :edit unless @titulacion.update_attributes(titulacion_params)
  end

  def destroy
   @titulacion = Titulacion.find(params[:id])
   @titulacion.destroy
  end

  private

  def set_titulacion
    @titulacion = Titulacion.find(params[:id])
  end

  def titulacion_params
    params.require(:titulacion).permit(:descripcion, :sigla)
  end
end
