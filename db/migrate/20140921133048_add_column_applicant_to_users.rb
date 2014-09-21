class AddColumnApplicantToUsers < ActiveRecord::Migration
  def change
    add_column :users, :applicant_id, :integer, after: :name
  end
end
