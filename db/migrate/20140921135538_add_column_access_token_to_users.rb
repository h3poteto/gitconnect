class AddColumnAccessTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :access_token, :string, after: :uid
  end
end
