json.array!(@clients_statics) do |clients_static|
  json.extract! clients_static, :id
  json.url clients_static_url(clients_static, format: :json)
end
