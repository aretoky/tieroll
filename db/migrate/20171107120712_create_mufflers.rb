class CreateMufflers < ActiveRecord::Migration[5.1]
  def change
    create_table :mufflers do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text    :description
      t.text    :raw_materials
      t.string  :name
      t.string  :code
      t.string  :muffler_front
      t.string  :muffler_back
      t.string  :muffler_fringe
      t.string  :muffler_one
      t.string  :muffler_two
      t.string  :muffler_three

      t.timestamps
    end
  end
end
