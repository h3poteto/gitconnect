class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    case resource
    when User
      users_dashboards_path
    when Client
      clients_statics_path
    when Admin
      admins_statics_path
    end
  end
  def after_sign_out_path_for(resource)
    root_path
  end
end
