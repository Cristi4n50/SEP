class ProgramasController < ApplicationController
  before_action :set_programa,  :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  
  def index
   
    @programas = Programa.all
  end

  def show
    @programa = Programa.find(params[:id])
  end

  def new
    @programa = Programa.new
  end

  def edit
    @programa = Programa.find(params[:id])
  end

  def create
    @programa = Programa.new(programa_params)
    render :action => :new unless @programa.save
  end

  def update
    @programa = Programa.find(params[:id])
    render :action => :edit unless @programa.update_attributes(programa_params)
  end

  def destroy
   @programa = Programa.find(params[:id])
   @programa.destroy
  end

  private

  def set_programa
    @programa = Programa.find(params[:id])
  end

  def programa_params
    params.require(:programa).permit(:nombre, :version, :codigo, :centro_id, :titulacion_id)
  end
end
