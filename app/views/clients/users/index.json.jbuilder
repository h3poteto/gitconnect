json.array!(@clients_users) do |clients_user|
  json.extract! clients_user, :id
  json.url clients_user_url(clients_user, format: :json)
end
