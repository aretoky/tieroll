class CreateShoes < ActiveRecord::Migration[5.1]
  def change
    create_table :shoes do |t|
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
      t.string :shoe_front
      t.string :shoe_back
      t.string :shoe_inner
      t.string :shoe_out_side
      t.string :shoe_sole
      t.string :toe
      t.string :shoe_one
      t.string :shoe_two
      t.string :shoe_three
      t.string :shoe_four
      t.string :shoe_five

      t.timestamps
    end
  end
end
