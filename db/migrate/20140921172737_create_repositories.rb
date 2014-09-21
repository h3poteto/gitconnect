class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.integer :applicant_id
      t.integer :language_id
      t.string :name, null: false
      t.string :full_name, null: false
      t.string :owner_name
      t.integer :owner_id
      t.string :owner_url
      t.boolean :private
      t.string :html_url
      t.boolean :fork
      t.datetime :first_created, null: false
      t.datetime :last_updated, null: false
      t.datetime :pushed_at
      t.integer :forks_count

      t.timestamps null: false
    end
  end
end
