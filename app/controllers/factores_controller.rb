class FactoresController < ApplicationController
  before_action :set_factor, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  before_filter :find_tipo_factor_factores
  
  def index
   
    if params[:registro] == nil or params[:registro] <= '0' then
        params[:registro] = 4
    end
    @factores = @tipo_factor.factores.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)  
  end

  def show
    @factor = Factor.find(params[:id])
  end

  def new
    @factor = Factor.new
  end

  def edit
    @factor = Factor.find(params[:id])
  end

  def create
    @factor = @tipo_factor.factores.build(factor_params)
    render :action => :new unless @factor.save
  end

  def update
    @factor = Factor.find(params[:id])
    render :action => :edit unless @factor.update_attributes(factor_params)
  end

  def destroy
    @factor = Factor.find(params[:id])
    @factor.destroy
  end

  private
  
  def find_tipo_factor_factores
    @tipo_factor = TipoFactor.find(params[:tipo_factor_id])
    @factor = Factor.find(params[:id]) if params[:id]
  end 

  private
   
  def set_factor
    @factor = Factor.find(params[:id])
  end

  def factor_params
    params.require(:factor).permit(:area_id, :tipo_factor_id, :descripcion, :nombre)
  end
end
