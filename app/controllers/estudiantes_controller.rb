class EstudiantesController < ApplicationController

  before_action :set_estudiante,  :require_login, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  before_filter :find_asignar_proy, :except => [ :index, :create, :new ]


  def index
   
    if params[:registro] == nil or params[:registro] <= '0' then
        params[:registro] = 4
    end
    if current_user.role == "admin" or current_user.role == "monitor"  or current_user.role == "directivo"
       @estudiantes = Estudiante.search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i).order("id")
    else
      @estudiante = Estudiante.find_by_documento(current_user.username)
      @estudiantes = Estudiante.where(:id => @estudiante.id).search(params[:buscar]).page(params[:page]).per_page(params[:registro].to_i).order("id")
    end
  end

  def show
    @estudiante = Estudiante.find(params[:id])
  end

  def new
    @estudiante = Estudiante.new
  end

  def edit
    @estudiante = Estudiante.find(params[:id])
  end

  def create
    @estudiante = Estudiante.new(estudiante_params)
    render :action => :new unless @estudiante.save
    #Si el Estudiante se crea exitosamente, Se crea un registro de dicho estudiante en la tabla de "Users"
    User.create(:username => @estudiante.documento, :email => @estudiante.email, :password => @estudiante.documento )

  end

  def update
   @estudiante = Estudiante.find(params[:id])
   render :action => :edit unless @estudiante.update_attributes(estudiante_params)
   User.create(:username => @estudiante.documento, :email => @estudiante.email, :password => @estudiante.documento )
  end

  def destroy
    @estudiante = Estudiante.find(params[:id])
    @estudiante.destroy
  end

  private

  def find_asignar_proy
    @estudiante = Estudiante.find(params[:id]) if params[:id]
  end 

  private

  def set_estudiante
    @estudiante = Estudiante.find(params[:id])
  end

  def estudiante_params
    params.require(:estudiante).permit(:email, :nombre1, :nombre2, :apellido1, :apellido2, :email, :genero, :documento, :tipopractica_id, :ficha_id, :jefe_id, :tipodoc_id)
  end
end
