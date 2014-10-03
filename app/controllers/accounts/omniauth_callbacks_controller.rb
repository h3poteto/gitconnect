# -*- coding: utf-8 -*-
class Accounts::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    @account = Account.find_for_github_oauth(request.env["omniauth.auth"], current_client.present? ? current_client : nil)
    if current_client.present?
      if @account.persisted?
        set_flash_message(:notice, :success, :kind => "Github") if is_navigational_format?
        redirect_to edit_clients_setting_path(current_client)
      else
        session["devise.github_data"] = request.env["omniauth.auth"]
        redirect_to edit_clients_setting_path(current_client)
      end
    else
      if @account.persisted?
        if Client.where(account_id: @account.id).blank?
          set_flash_message(:notice, :success, :kind => "Github") if is_navigational_format?
          sign_in_and_redirect @account, :event => :authentication
        else
          ## clientとして登録されているのでuserとしてのサインインはさせない
          redirect_to new_client_session_path
        end
      else
        session["devise.github_data"] = request.env["omniauth.auth"]
        redirect_to new_account_registration_url
      end
    end
  end
end
