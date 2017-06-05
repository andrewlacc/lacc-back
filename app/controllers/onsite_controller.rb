class OnsiteController < ApplicationController
  def blank_form
  end

  def new
    @onsite = OnSite.new({ state: "CA" })
  end

  def create
    @onsite = OnSite.new(onsite_params)
    @onsite.save()
    redirect_to onsite_index_path
  end

  def index
    @onsites = OnSite.all()
  end

  def show
    @onsite = OnSite.find(params[:id])
  end

  def edit
    @onsite = OnSite.find(params[:id])
  end

  def update
    @onsite = OnSite.find(params[:id])
    @onsite.update_attributes(onsite_params)
    redirect_to onsite_index_path
  end

  def delete
  end

  def destroy
  end

  private

  def onsite_params
    params.require(:on_site).permit(:name, :company, :phone, :alt_phone, :email, :street, :city, :state, :zip,
     :onsite_date, :symptoms, :part_num_one, :part_one, :price_one, :part_num_two, :part_two, :price_two, :part_num_three, :part_three, :price_three,
     :resolution, :onsite_cost)
  end
end
