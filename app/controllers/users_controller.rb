class UsersController < ApplicationController
  before_action :authenticate_account!
  layout "user"
end
