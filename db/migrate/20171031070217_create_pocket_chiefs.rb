class CreatePocketChiefs < ActiveRecord::Migration[5.1]
  def change
    create_table :pocket_chiefs do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text    :description
      t.text    :raw_materials
      t.string :name
      t.string :code
      t.string :chief_one
      t.string :chief_two
      t.string :chief_three

      t.timestamps
    end
  end
end
