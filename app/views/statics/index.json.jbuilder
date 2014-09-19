json.array!(@statics) do |static|
  json.extract! static, :id
  json.url static_url(static, format: :json)
end
