class DashboardsController < ApplicationController
  before_action :set_dashboard, only: [:show, :edit, :update, :destroy]

  # GET /dashboards
  def index
    @dashboards = Dashboard.all
  end

  def show
  end

  # GET /dashboards/new
  def new
    @dashboards = Dashboard.new
  end

  # GET /dashboards/1/edit
  def edit
  end

  # POST /dashboards
  def create
    @dashboard = Dashboard.new(dashboard_params)

    respond_to do |format|
      if @dashboard.save
        format.html { redirect_to @dashboard, notice: 'Dashboard was successfully created.' }
        format.json { render :show, status: :created, location: @dashboard }
      else
        format.html { render :new }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboards/1
  def update
    respond_to do |format|
      if @dashboards.update(dashboard_params)
        format.html { redirect_to @dashboards, notice: 'Dashboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @dashboards }
      else
        format.html { render :edit }
        format.json { render json: @dashboards.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboards/1
  def destroy
    @dashboards.destroy
    respond_to do |format|
      format.html { redirect_to dashboards_path, notice: 'Dashboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard
      @dashboards = Dashboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dashboard_params
      params.require(:dashboard).permit(:name, :description)
    end
end
