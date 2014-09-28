json.array!(@admins_statics) do |admins_static|
  json.extract! admins_static, :id
  json.url admins_static_url(admins_static, format: :json)
end
