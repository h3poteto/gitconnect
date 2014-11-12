class Users::StaticsController < UsersController
  def index
    @languages = Language.all
    @clients = Client.all
  end
end
