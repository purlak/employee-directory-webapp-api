class Api::EmployeesController < ApplicationController

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

  end 

  def update

  end 

  def destroy

  end 

  private

  def set_employee

  end 

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :title, :department, :location)
  end 
end 