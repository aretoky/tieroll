class CreateOthers < ActiveRecord::Migration[5.1]
  def change
    create_table :others do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text :description
      t.string :other_item_name
      t.string :other_item_code
      t.string :other_one
      t.string :other_two
      t.string :other_three
      t.string :other_four
      t.string :other_five

      t.timestamps
    end
  end
end
