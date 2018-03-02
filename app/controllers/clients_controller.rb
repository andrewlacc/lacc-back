class ClientsController < ApplicationController
  before_action :confirm_logged_in

  def index
    per_page = 20
    @max_page = (Client.count / per_page) + 1
    @page = params[:page].to_i
    @clients = Client.all.sort_by_name.limit(per_page).offset((@page - 1) * per_page)

    if @page > @max_page || @page < 1
      redirect_to clients_path(page: 1)
    end
  end

  def create
    client = Client.new(client_params)

    if client.save
      redirect_to clients_path
    else
      flash[:alert] = "Unable to create client, either duplicate or missing info"
      render 'new'
    end
  end

  def show
    @client = Client.find(params[:id])
    @on_sites = @client.on_sites
    @off_sites = @client.off_sites
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])

    if @client.update_attributes(client_params)
      redirect_to client_path(@client)
    else
      flash[:alert] = "Unable to create client, either duplicate or missing info"
      render 'edit'
    end
  end

  def destroy
    client = Client.find(params[:id])
    client.destroy
    redirect_to clients_path
  end

  private

  def client_params
    params.require(:client).permit(:name, :company, :phone, :alt_phone, :email, :street, :city, :state, :zip, :notes)
  end
end
