class EmployeesController < ApplicationController
    before_action :find_employee, only: [:edit, :show]
    
    def index
        @employees = Employee.all
    end

    def show
    end

    def new 
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params)
        redirect_to employee_path(@employee)
    end 

    def edit 
    end 

    private 

    def employee_params 
        params.require(:employee).permit! 
    end

    def find_employee
        @employee = Employee.all.find(params[:id])
    end


end
