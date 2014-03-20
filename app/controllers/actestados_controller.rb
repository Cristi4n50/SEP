class ActestadosController < ApplicationController
 
  before_action :set_actestado,:require_login, only: [:show, :edit, :update, :destroy]
  
  def index
    @actestados = Actestado.all
  end

  def show
    @actestado = Actestado.find(params[:id])
  end

  def new
    @actestado = Actestado.new
  end

  def edit
    @actestado = Actestado.find(params[:id])
  end

  def create
    @actestado = Actestado.new(actestado_params)
    render :action => :new unless @actestado.save
  end

  def update
    @actestado = Actestado.find(params[:id])
    render :action => :edit unless @actestado.update_attributes(actestado_params)
  end

  def destroy
    @actestado = Actestado.find(params[:id])
    @actestado.destroy
  end

  private
   
  def set_actestado
    @actestado = Actestado.find(params[:id])
  end

  def actestado_params
    params.require(:actestado).permit(:nombre, :descripcion)
  end
end
