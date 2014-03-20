class ActividadesController < ApplicationController
  before_action :set_actividad, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  before_filter :find_actividad_asignares_proy
 
  
  def index
    if params[:registro] == nil or params[:registro] <= '0' then
        params[:registro] = 4
    end
    @actividades = @asignar_proy.actividades.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)
  end

  def show
    @actividad = Actividad.find(params[:id])
  end

  def new
    @actividad = Actividad.new
  end

  def edit
    @actividad = Actividad.find(params[:id])
  end

  def create
    @actividad = @asignar_proy.actividades.build(actividad_params)
    render :action => :new unless @actividad.save 
  end

  def update
    @actividad = Actividad.find(params[:id])
    render :action => :edit unless @actividad.update_attributes(actividad_params)
  end

  def destroy
   @actividad = Actividad.find(params[:id])
   @actividad.destroy
  end
   private
  
  def find_actividad_asignares_proy
    @asignar_proy = AsignarProy.find(params[:asignar_proy_id])
    @actividad = Actividad.find(params[:id]) if params[:id]
  end 
  private
  
  def set_actividad
    @actividad = Actividad.find(params[:id])
  end

  def actividad_params
    params.require(:actividad).permit(:nombre, :estudiante_id, :fecha_inicio,
     :fecha_fin, :descripcion, :objetivo, :categoria_id, :objsyproy_id,
     :asignar_proy_id, :actestado_id, :actividad1, :actividad2, :actividad3,
     :actividad4, :actividad5)
  end
end
