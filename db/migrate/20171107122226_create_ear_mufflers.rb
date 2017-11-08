class CreateEarMufflers < ActiveRecord::Migration[5.1]
  def change
    create_table :ear_mufflers do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text    :description
      t.text    :raw_materials
      t.string  :ear_muffler_name
      t.string  :ear_muffler_code
      t.string  :ear_muffler_front
      t.string  :ear_muffler_back
      t.string  :ear_muffler_inner
      t.string  :ear_muffler_one
      t.string  :ear_muffler_two
      t.string  :ear_muffler_three
      t.string  :ear_muffler_four

      t.timestamps
    end
  end
end
