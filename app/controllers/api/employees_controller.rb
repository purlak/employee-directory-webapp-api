class Api::EmployeesController < ApplicationController

  before_action :set_employee, only: [:show, :edit. :destroy]
  def index
    @employees = Employee.all
    render json: @employees
  end 

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      render json: @employee
    else
      render json: {message: employee.errors}, status: 400
    end 
  end 

  def show
    render json: @employee
  end 

  def update


  end 

  def destroy

  end 

  private

  def set_employee
    @employee = Employee.find_by(id: params[:id]) 
  end 

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :title, :department, :location)
  end 
end 