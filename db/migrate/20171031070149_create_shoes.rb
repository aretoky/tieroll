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
      t.text :description
      t.string :shoes_name
      t.string :shoes_code
      t.string :shoes_one
      t.string :shoes_two
      t.string :shoes_three
      t.string :shoes_four
      t.string :shoes_five

      t.timestamps
    end
  end
end
