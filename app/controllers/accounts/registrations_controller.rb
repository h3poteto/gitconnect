class Accounts::RegistrationsController < Devise::RegistrationsController
  def build_resource(hash=nil)
    hash[:uid] = Account.create_unique_string
    super
  end
end
