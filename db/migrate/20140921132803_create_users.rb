class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :account_id
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
