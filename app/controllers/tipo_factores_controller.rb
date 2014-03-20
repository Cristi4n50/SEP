class TipoFactoresController < ApplicationController
  before_action :set_tipo_factor, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  before_filter :find_factor, :except => [ :index, :create, :new ]

  def index
    
    if params[:registro] == nil or params[:registro] <= '0' then params[:registro] = 4
    end
    @tipo_factores = TipoFactor.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i)
  end

  def show
    @tipo_factor = TipoFactor.find(params[:id])
  end

  def new
    @tipo_factor = TipoFactor.new
  end

  def edit
    @tipo_factor = TipoFactor.find(params[:id]) 
  end

  def create
    @tipo_factor = TipoFactor.new(tipo_factor_params)
    render :action => :new unless @tipo_factor.save
  end

  def update
    @tipo_factor = TipoFactor.find(params[:id])
    render :action => :edit unless @tipo_factor.update_attributes(tipo_factor_params)
  end

  def destroy
    @tipo_factor = TipoFactor.find(params[:id])
    @tipo_factor.destroy
  end

  private

  def find_factor
    @tipo_factor = TipoFactor.find(params[:id]) if params[:id]
  end 

  private

  def set_tipo_factor
    @tipo_factor = TipoFactor.find(params[:id])
  end

  def tipo_factor_params
    params.require(:tipo_factor).permit(:nombre, :sigla)
  end
end
