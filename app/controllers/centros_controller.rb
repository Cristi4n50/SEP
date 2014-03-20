class CentrosController < ApplicationController
  
  before_action :set_centro,:require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login

  def index
    
    @centros = Centro.all
  end

  def show
    @centro = Centro.find(params[:id])
  end

  def new
    @centro = Centro.new
  end

  def edit
    @centro = Centro.find(params[:id])
  end

  def create
    @centro = Centro.new(centro_params)
    render :action => :new unless @centro.save
  end

  def update
    @centro = Centro.find(params[:id])
    render :action => :edit unless @centro.update_attributes(centro_params)
  end

  def destroy
    @centro = Centro.find(params[:id])
    @centro.destroy
  end

  private

  def set_centro
    @centro = Centro.find(params[:id])
  end

  def centro_params
    params.require(:centro).permit(:codigo, :nombre, :direccion)
  end
end
