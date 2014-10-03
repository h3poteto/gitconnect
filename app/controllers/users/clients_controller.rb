class Users::ClientsController < UsersController
  # GET /clients/users
  # GET /clients/users.json
  def index
  end

  # GET /clients/users/1
  # GET /clients/users/1.json
  def show
    @client = Client.find(params[:id])
  end

  def search
    @clients = []
    @params = {}
    if params[:search].present?
      @clients = Client.search(account_repositories_language_id_eq: params[:search][:language_id]).result
      @clients.uniq!
      @params.store(:language_id, params[:search][:language_id])
    end
  end
end
