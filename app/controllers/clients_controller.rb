class ClientsController < ApplicationController
  before_action :authenticate_client!
  layout "client"
end
