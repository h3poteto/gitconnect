class AddAccountIdColumnToClients < ActiveRecord::Migration
  def change
    add_column :clients, :account_id, :integer, after: :email
  end
end
