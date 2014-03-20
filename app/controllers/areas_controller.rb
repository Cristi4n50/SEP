class AreasController < ApplicationController
  
  before_action :set_area, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
 

  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:id])
  end

  def new
    @area = Area.new
  end

  def edit
    @area = Area.find(params[:id])
  end

  def create
   @area = Area.new(area_params)
   render :action => :new unless @area.save
  end

  def update
    @area = Area.find(params[:id])
    render :action => :edit unless @area.update_attributes(area_params)
  end

  def destroy
   @area = Area.find(params[:id])
   @area.destroy
  end

  private
    
  def set_area
    @area = Area.find(params[:id])
  end

  def area_params
    params.require(:area).permit(:nombre, :sigla)
  end
end
