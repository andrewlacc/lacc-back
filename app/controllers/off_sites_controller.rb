class OffSitesController < ApplicationController
  def index
    @off_sites = OffSite.all
  end

  def new
    @clients = Client.all
  end

  def create
    @off_site = OffSite.new(off_site_params)
    @off_site.save
    redirect_to off_sites_path
  end

  def show
    @off_site = OffSite.find(params[:id])
  end

  def edit
    @off_site = OffSite.find(params[:id])
    @clients = Client.all
  end

  def update
    @off_site = OffSite.find(params[:id])
    @off_site.update_attributes(off_site_params)
    redirect_to off_sites_path
  end

  def destroy
    @off_site = OffSite.find(params[:id])
    @off_site.destroy
    redirect_to off_sites_path
  end

  private

  def off_site_params
    params.require(:off_site).permit(:location, :checked_date, :initial_problem, :service_order, :data, :is_done, :client_id, :serial_number)
  end
end
