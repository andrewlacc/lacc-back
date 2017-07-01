module OnsiteHelper

  def get_client_hash
    x = {}
    @clients.each do |client|
      x[client.name] = client.id
    end
    x
  end
end
