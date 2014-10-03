class Clients::UsersController < ClientsController

  # GET /clients/users
  # GET /clients/users.json
  def index
  end

  # GET /clients/users/1
  # GET /clients/users/1.json
  def show
    @user = User.find(params[:id])
  end

  def search
    @users = []
    @params = {}
    if params[:search].present?
      @users = User.search(account_repositories_language_id_eq: params[:search][:language_id]).result
      @users.uniq!
      @params.store(:language_id, params[:search][:language_id])
    end
  end
end
