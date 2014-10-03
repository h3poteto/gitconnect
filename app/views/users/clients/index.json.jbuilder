json.array!(@users_clients) do |users_client|
  json.extract! users_client, :id
  json.url users_client_url(users_client, format: :json)
end
