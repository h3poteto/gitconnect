json.array!(@users_dashboards) do |users_dashboard|
  json.extract! users_dashboard, :id
  json.url users_dashboard_url(users_dashboard, format: :json)
end
