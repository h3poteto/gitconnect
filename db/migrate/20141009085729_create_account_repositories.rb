class CreateAccountRepositories < ActiveRecord::Migration
  def change
    create_table :account_repositories do |t|
      t.integer :account_id
      t.integer :repository_id
      t.timestamps
    end
  end
end
