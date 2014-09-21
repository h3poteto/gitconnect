class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.integer :user_id
      t.string :last_name
      t.string :first_name
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
