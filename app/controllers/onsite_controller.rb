class OnsiteController < ApplicationController
  def blank_form
  end

  def new
    @onsite = OnSite.new({ state: "CA" })
  end

  def create
    @onsite = OnSite.new(onsite_params)
    @onsite.save
    redirect_to onsite_index_path
  end

  def index
    @onsites = OnSite.all
  end

  def show
    @onsite = OnSite.find(params[:id])
    @parts_cost = cal_parts_cost(@onsite.price_one, @onsite.price_two, @onsite.price_three)
    @subtotal = cal_subtotal(@onsite.onsite_cost, @parts_cost)
    @tax = cal_tax(@parts_cost)
    @total = cal_total(@subtotal, @tax)
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
    @onsite = OnSite.find(params[:id])
    @onsite.destroy
    redirect_to onsite_index_path
  end

  private

  def onsite_params
    params.require(:on_site).permit(:name, :company, :phone, :alt_phone, :email, :street, :city, :state, :zip,
     :onsite_date, :symptoms, :part_num_one, :part_one, :price_one, :part_num_two, :part_two, :price_two, :part_num_three, :part_three, :price_three,
     :resolution, :onsite_cost)
  end

  def cal_parts_cost(price_part_one, price_part_two, price_part_three)
    price_part_one ||= 0.00
    price_part_two ||= 0.00
    price_part_three ||= 0.00
    return (price_part_one + price_part_two + price_part_three).round(2)
  end

  def cal_subtotal(onsite_cost, parts_cost)
    onsite_cost = onsite_cost || 0.0
    return (onsite_cost + parts_cost).round(2)
  end

  def cal_tax(subtotal)
    return (subtotal * 0.0775).round(2)
  end

  def cal_total(subtotal, tax)
    return subtotal + tax
  end
end
