class TipodocsController < ApplicationController
  before_action :set_tipodoc, :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  
  def index
    
    @tipodocs = Tipodoc.all
  end

  def show
    @tipodoc = Tipodoc.find(params[:id]) 
  end

  def new
    @tipodoc = Tipodoc.new
  end

  def edit
    @tipodoc = Tipodoc.find(params[:id]) 
  end

  def create
    @tipodoc = Tipodoc.new(tipodoc_params)
    render :action => :new unless @tipodoc.save
  end

  def update
    @tipodoc = Tipodoc.find(params[:id])
    render :action => :edit unless @tipodoc.update_attributes(tipodoc_params)
  end

  def destroy
   @tipodoc = Tipodoc.find(params[:id])
   @tipodoc.destroy
  end

  private

  def set_tipodoc
    @tipodoc = Tipodoc.find(params[:id])
  end

  def tipodoc_params
    params.require(:tipodoc).permit(:descripcion, :sigla)
  end
end
