class CompaniesController < ApplicationController
  def create
    @dashboards = Dashboard.find(params[:id])
    @company = @dashboards.companies.create(company_params)
    redirect_to company_path(@dashboards)
  end

end