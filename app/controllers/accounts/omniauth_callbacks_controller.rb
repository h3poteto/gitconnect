class Accounts::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    @account = Account.find_for_github_oauth(request.env["omniauth.auth"], current_account)
    if @account.persisted?
      set_flash_message(:notice, :success, :kind => "Github") if is_navigational_format?
      sign_in_and_redirect @account, :event => :authentication
    else
      session["devise.github_data"] = request.env["omniauth.auth"]
      redirect_to new_account_registration_url
    end
  end
end
