class AddOmniauthColumnsToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :uid,      :string, null: false, default: "", after: :email
    add_column :accounts, :provider, :string, null: false, default: "", after: :uid
    add_column :accounts, :name,     :string, afger: :provider
    add_column :accounts, :access_token, :string, after: :name
    add_column :accounts, :type, :string, after: :id

    add_index :accounts, [:uid, :provider], unique: true
  end
end
