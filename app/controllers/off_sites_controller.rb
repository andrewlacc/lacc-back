class OffSitesController < ApplicationController
  before_action :confirm_logged_in

  def index
    per_page = 20
    @max_page = (OffSite.count / per_page) + 1
    @page = params[:page].to_i
    @off_sites = OffSite.all.sort_desc.limit(per_page).offset((@page - 1) * per_page)

    if @page > @max_page || @page < 1
      redirect_to off_sites_path(page: 1)
    end
  end

  def new
    @date = Date.today
    @client_name = params[:client_name] || ''
  end

  def create
    off_site = OffSite.new(off_site_params)

    off_site.client = Client.find_by(name: clean_value(off_site_params[:client_name]))

    if off_site.save
      redirect_to off_sites_path
    else
      flash[:alert] = "Unable to create Onsite"
      render 'new'
    end
  end

  def show
    @off_site = OffSite.find(params[:id])
  end

  def edit
    @off_site = OffSite.find(params[:id])
    @date = @off_site.checked_date
    @client_name = @off_site.client.name
  end

  def update
    @off_site = OffSite.find(params[:id])

    @off_site.update_attributes(off_site_params)
    @off_site.client = Client.find_by(name: clean_value(off_site_params[:client_name]))

    if @off_site.save
      redirect_to off_sites_path
    else
      flash[:alert] = "Unable to save Onsite"
      render 'edit'
    end
  end

  def destroy
    @off_site = OffSite.find(params[:id])
    @off_site.destroy
    redirect_to off_sites_path
  end

  private

  def off_site_params
    params.require(:off_site).permit(:location, :checked_date, :initial_problem, :service_order, :data, :is_done, :client_name, :serial_number)
  end
end
