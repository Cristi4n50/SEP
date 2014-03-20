class DetalleEvaluacionesController < ApplicationController
  
  before_action :set_detalle_evaluacion,:require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login

  def index
    
    @detalle_evaluaciones = DetalleEvaluacion.all
  end

  def show
    @detalle_evaluacion = DetalleEvaluacion.find(params[:id])
  end

  def new
    @detalle_evaluacion = DetalleEvaluacion.new
  end


  def edit
    @detalle_evaluacion = DetalleEvaluacion.find(params[:id])
  end

  def create
    @detalle_evaluacion = DetalleEvaluacion.new(detalle_evaluacion_params)
    render :action => :new unless @detalle_evaluacion.save
  end

  def update
   @detalle_evaluacion = DetalleEvaluacion.find(params[:id])
   render :action => :edit unless @detalle_evaluacion.update_attributes(detalle_evaluacion_params)

  end

  def destroy
   @detalle_evaluacion = DetalleEvaluacion.find(params[:id])
   @detalle_evaluacion.destroy
  end

  private
  
  def set_detalle_evaluacion
    @detalle_evaluacion = DetalleEvaluacion.find(params[:id])
  end

  def detalle_evaluacion_params
    params.require(:detalle_evaluacion).permit(:evaluacion_id, :factor_id, :nota, :observaciones)
  end
end
