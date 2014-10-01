class Clients::SettingsController < ClientsController
  before_action :set_clients_setting, only: [:edit, :update]

  # GET /clients/settings
  # GET /clients/settings.json
  def edit
    @clients = current_client
  end

  # PATCH/PUT /clients/settings/1
  # PATCH/PUT /clients/settings/1.json
  def update
    respond_to do |format|
      if @clients.update(clients_setting_params)
        format.html { redirect_to edit_clients_setting_path(@clients), notice: 'Setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @clients }
      else
        format.html { render :edit }
        format.json { render json: @clients.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clients_setting
      @clients = current_client
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clients_setting_params
      params.require(:client).permit(:email)
    end
end
