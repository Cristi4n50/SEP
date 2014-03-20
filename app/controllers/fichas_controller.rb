class FichasController < ApplicationController
  before_action :set_ficha, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  
  def index
    
    @fichas = Ficha.all
  end

  def show
    @ficha = Ficha.find(params[:id])
  end

  def new
    @ficha = Ficha.new
  end

  def edit
    @ficha = Ficha.find(params[:id])
  end

  def create
    @ficha = Ficha.new(ficha_params)
    render :action => :new unless @ficha.save
  end

  def update
    @ficha = Ficha.find(params[:id])
    render :action => :edit unless @ficha.update_attributes(ficha_params)
  end

  def destroy
    @ficha  = Ficha.find(params[:id])
    @ficha.destroy
  end

  private

  def set_ficha
    @ficha = Ficha.find(params[:id])
  end

  def ficha_params
    params.require(:ficha).permit(:numero, :fecha_inicio_practicas, :fecha_fin_practicas, :programa_id)
  end
end
