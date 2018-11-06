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
      render json: { errors:  {message: "This object failed to save"}}

    end 
  end 

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :title, :department, :location)
  end 
end 