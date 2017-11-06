class CreateSocks < ActiveRecord::Migration[5.1]
  def change
    create_table :socks do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text    :description
      t.text    :raw_materials
      t.string :socks_name
      t.string :socks_code
      t.string :socks_one
      t.string :socks_two
      t.string :socks_three

      t.timestamps
    end
  end
end
