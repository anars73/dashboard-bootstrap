class EmployeesController < ApplicationController
  def index
    @company = Company.find(params[:company_id])
    @employees = Employee.all
  end

  def create
    @company = Company.find(params[:company_id])
    @employee = @company.employees.new(employee_params)
    if @employee.save
      redirect_to company_employees_url
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:company_id])
    @employee = @company.employees.find(params[:id])
  end

  def edit
    @company = Company.find(params[:company_id])
    @employee = Employee.find(params[:id])
  end

  def update
    @company = Company.find(params[:company_id])
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      flash[:notice] = 'Update successful'
      redirect_to company_employees_url
    else
      flash[:alert] = 'Update failed'
      render :edit
    end

  end

  # GET /dashboards/new
  def new
    @company = Company.find(params[:company_id])
    @employee = @company.employees.new
  end

  private

  def employee_params
    params.require(:employee).permit(:company_id, :first_name, :last_name)
  end

end