class CreateAccountLanguages < ActiveRecord::Migration
  def change
    create_table :account_languages do |t|
      t.integer :account_id
      t.integer :language_id

      t.timestamps
    end
  end
end
