class CreateShurts < ActiveRecord::Migration[5.1]
  def change
    create_table :shurts do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text :description
      t.string :shurt_name
      t.string :shurt_code
      t.string :s_front
      t.string :s_back
      t.string :s_cuff
      t.string :s_button
      t.string :s_breast_pocket
      t.string :colar
      t.string :s_other

      t.timestamps
    end
  end
end
