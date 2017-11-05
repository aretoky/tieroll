class CreateTiePins < ActiveRecord::Migration[5.1]
  def change
    create_table :tie_pins do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text    :description
      t.text    :raw_materials
      t.string :tie_pin_name
      t.string :tie_pin_code
      t.string :tie_pin_one
      t.string :tie_pin_two
      t.string :tie_pin_three

      t.timestamps
    end
  end
end
