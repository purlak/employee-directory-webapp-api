class Api::EmployeesController < ApplicationController

  before_action :set_employee, only: [:show, :update, :destroy]
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
    if @employee.update(employee_params)
      render json: @employee
    else 
      render json: {message: employee.errors}, status: 400

    end 

  end 

  def destroy
    if @employee.destroy
      render json: {message: "Delete Successful"}, status: 204

    else 
      render json: {message: "Unable to Delete"}, status: 400

    end 
  end 

  private

  def set_employee
    @employee = Employee.find_by(id: params[:id]) 
  end 

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :title, :department, :location)
  end 
end 