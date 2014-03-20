class AssignmentsController < ApplicationController
  
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  before_filter :require_login
  

  def index
    @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def create
    @assignment = Assignment.new(assignment_params)
    render :action => :new unless @assignment.save
   
  end

  def update
    @assignment = Assignment.find(params[:id])
    render :action => :edit unless @assignment.update_attributes(assignment_params)
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy

  end

  private
   
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    def assignment_params
      params.require(:assignment).permit(:user_id, :role_id)
    end
end
