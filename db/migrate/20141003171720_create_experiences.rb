class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :term
      t.integer :min_year

      t.timestamps
    end
  end
end
