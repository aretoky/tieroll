class CreateBelts < ActiveRecord::Migration[5.1]
  def change
    create_table :belts do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text    :description
      t.text    :raw_materials
      t.string :belt_name
      t.string :belt_code
      t.string :belt_one
      t.string :belt_two
      t.string :belt_three
      t.string :belt_four

      t.timestamps
    end
  end
end
