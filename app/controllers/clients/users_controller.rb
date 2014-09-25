class Clients::UsersController < ClientsController

  # GET /clients/users
  # GET /clients/users.json
  def index
  end

  # GET /clients/users/1
  # GET /clients/users/1.json
  def show
    @applicant = Applicant.find(params[:id])
  end

  def search
    @applicants = []
    @params = {}
    if params[:search].present?
      @applicants = Applicant.search(repositories_language_id_eq: params[:search][:language_id]).result
      @applicants.uniq!
      @params.store(:language_id, params[:search][:language_id])
    end
  end
end
