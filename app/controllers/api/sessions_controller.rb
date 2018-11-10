require 'Auth'

class Api::SessionsController < ApplicationController

  def login
    employee = Employee.find_by(username: params[:username])
    if employee && employee.authenticate(params[:password])
      token = Auth.create_token({ id: employee.id, name: employee.name})
      render json: { employee: employee, token: token }
    else
      render json: { errors: { message: "Unable to find a user with those credentials" } }, status: 401
    end
  end

  def find
    current_employee = Auth.decode_token(params[:token])
    if current_employee
      render json: { employee: current_employee }
    else
      render json: { errors: { message: "Unable to find Employee" } }, status: 401
    end
  end

end