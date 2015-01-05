class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    case resource
    when Account
      users_statics_path
    when Client
      clients_statics_path
    when Admin
      admins_statics_path
    end
  end
  def after_sign_out_path_for(resource)
    case resource
    when :account
      root_path
    when :client
      new_client_session_path
    when :admin
      new_admin_session_path
    else
      root_path
    end
  end
end
