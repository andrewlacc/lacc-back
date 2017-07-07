class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      render new_client_path
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
      render edit_client_path
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end

  private

  def client_params
    params.require(:client).permit(:name, :company, :phone, :alt_phone, :email, :street, :city, :state, :zip, :notes)
  end
end
