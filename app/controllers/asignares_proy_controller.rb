class AsignaresProyController < ApplicationController
  
  before_action :set_asignar_proy,:require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  before_filter :find_asignar_proy_estudiantes
  before_filter :find_actividad, :except => [ :index, :create, :new ]
  

  def index
    if params[:registro] == nil or params[:registro] <= '0' then
      params[:registro] = 4
    end
    @asignares_proy = @estudiante.asignares_proy.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)
  end

  def show
    @asignar_proy = AsignarProy.find(params[:id])
  end

  def new
    @asignar_proy = AsignarProy.new
  end

  def edit
    @asignar_proy = AsignarProy.find(params[:id])
  end

  def create
    @asignar_proy = @estudiante.asignares_proy.build(asignar_proy_params)
    render :action => :new unless @asignar_proy.save
  end

  def update
    @asignar_proy = AsignarProy.find(params[:id])
    render :action => :edit unless @asignar_proy.update_attributes(asignar_proy_params)
  end

  def destroy
    @asignar_proy = AsignarProy.find(params[:id])
    @asignar_proy.destroy
  end

  private

  def find_actividad
      @asignar_proy = AsignarProy.find(params[:id]) if params[:id]
  end 
  
  private
  
  def find_asignar_proy_estudiantes
     @estudiante = Estudiante.find(params[:estudiante_id])
     @asignar_proy = AsignarProy.find(params[:id]) if params[:id]
  end 

  private

  def set_asignar_proy
    @asignar_proy = AsignarProy.find(params[:id])
  end

  def asignar_proy_params
    params.require(:asignar_proy).permit(:nombreproyecto, :estudiante_id, :objsyproy_id, :estudiante_id)
  end
end
