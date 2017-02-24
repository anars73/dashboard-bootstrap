class CompaniesController < ApplicationController

  def index
    @companies = Company.all
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
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      flash[:notice] = 'Update successful'
      redirect_to companies_path
    else
      flash[:alert] = 'Update failed'
      render :edit
    end

  end
  # GET /dashboards/new
  def new
    @company = Company.new
  end

  private

  def company_params
    params.require(:company).permit(:name, :description)
  end

end