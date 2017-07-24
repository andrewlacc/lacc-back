module OnsiteHelper

  def get_client_hash
    client_hash = {}

    @clients.each do |client|
      client_hash[client.name] = client.id
    end
    
    client_hash
  end
end
