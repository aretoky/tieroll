class CreateSockes < ActiveRecord::Migration[5.1]
  def change
    create_table :sockes do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text :description
      t.string :sockes_name
      t.string :sockes_code
      t.string :sockes_oen
      t.string :sockes_two
      t.string :sockes_three

      t.timestamps
    end
  end
end
