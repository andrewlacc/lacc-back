class OnsiteController < ApplicationController
  before_action :confirm_logged_in

  def new
    @onsite = OnSite.new
    @date = Date.today
    @client_name = params[:client_name] || ''
  end

  def create
    onsite = OnSite.new(onsite_params)

    onsite.tech = session[:username]

    onsite.client = Client.find_by(name: clean_value(onsite_params[:client_name]))

    if onsite.save
      redirect_to onsite_index_path
    else
      flash[:alert] = "Unable to create Onsite"
      redirect_to new_onsite_path
    end
  end

  def index
    per_page = 20
    @max_page = (OnSite.count / per_page) + 1
    @page = params[:page].to_i
    @onsites = OnSite.sort_by_date_desc.limit(per_page).offset((@page - 1) * per_page)

    if @page > @max_page || @page < 1
      redirect_to onsite_index_path(page: 1)
    end
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
    @date = @onsite.onsite_date
    @client_name = @onsite.client.name
  end

  def update
    @onsite = OnSite.find(params[:id])

    @onsite.update_attributes(onsite_params)
    @onsite.client = Client.find_by(name: clean_value(onsite_params[:client_name]))

    if @onsite.save
      redirect_to onsite_index_path
    else
      flash[:alert] = 'Unable to save On Site, please input missing data.'
      render 'edit'
    end
  end

  def destroy
    @onsite = OnSite.find(params[:id])
    @onsite.destroy
    redirect_to onsite_index_path
  end

  def get_clients
    render json: Client.all
  end

  private

  def onsite_params
    params.require(:on_site).permit(:client_name, :onsite_date, :symptoms, :part_num_one, :part_one, :price_one, :part_num_two, :part_two, :price_two, :part_num_three, :part_three, :price_three,
    :resolution, :onsite_cost, :invoice_number, :tech)
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
