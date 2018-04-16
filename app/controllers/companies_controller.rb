class CompaniesController < AdminsController
  before_action :find_company_id,  only: [:edit, :show, :update, :destroy]

  def index
    @companies = Company.paginate(:page => params[:page], :per_page => 20)
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to company_path(@company)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @company.update(company_params)
      flash[:notice] = 'Update successful'
      redirect_to companies_path
    else
      flash[:alert] = 'Update failed'
      render :edit
    end
  end

  def destroy
    @company.destroy
    redirect_to companies_path
  end

  # GET /dashboards/new
  def new
    @company = Company.new
  end

  private

  def find_company_id
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :description)
  end
end
