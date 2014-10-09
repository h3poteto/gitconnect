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
      @repos = Repository.where(language_id: params[:search][:language_id])
      term = Experience.find(params[:search][:experience_id].to_i).min_year
      @repos.each do |repo|
        if repo.pushed_at - term.year > repo.first_created
          repo.accounts.each do |account|
            @users.push(account.user) if account.user.present?
          end
        end
      end
      @users.uniq!
      params[:search].each do |key, val|
        @params.store(key, val)
      end
    end
  end
end
