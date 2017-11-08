class CreateLapelPins < ActiveRecord::Migration[5.1]
  def change
    create_table :lapel_pins do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text    :description
      t.text    :raw_materials
      t.string  :lapel_pin_name
      t.string  :lapel_pin_code
      t.string  :lapel_pin_one
      t.string  :lapel_pin_two
      t.string  :lapel_pin_three
      t.string  :lapel_pin_four
      t.string  :lapel_pin_five

      t.timestamps
    end
  end
end
