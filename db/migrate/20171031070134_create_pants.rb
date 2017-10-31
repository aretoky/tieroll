class CreatePants < ActiveRecord::Migration[5.1]
  def change
    create_table :pants do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text :description
      t.string :pant_name
      t.string :pant_code
      t.string :p_front
      t.string :p_back
      t.string :p_inner
      t.string :belt_roop

      t.timestamps
    end
  end
end