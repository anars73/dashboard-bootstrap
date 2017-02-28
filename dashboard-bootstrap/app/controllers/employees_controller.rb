class EmployeesController < AdminsController
  before_action :find_company_id
  before_action :find_employee_id, only: [:edit, :show, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def create
    @employee = @company.employees.new(employee_params)
    if @employee.save
      redirect_to company_employees_url
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
      flash[:notice] = 'Update successful'
      redirect_to company_employees_url
    else
      flash[:alert] = 'Update failed'
      render :edit
    end
  end

  def destroy
    if @employee.destroy
      redirect_to company_employees_url
    else
      puts 'Something went wrong!'
    end
  end

  # GET /dashboards/new
  def new
    @employee = @company.employees.new
  end

  private

  def find_company_id
    @company = Company.find(params[:company_id])
  end

  def find_employee_id
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:company_id, :first_name, :last_name)
  end
end
