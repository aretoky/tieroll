class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :staff_member
      t.references :photo
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.integer :size
      t.string :product_name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
