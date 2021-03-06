class CreateGants < ActiveRecord::Migration[5.1]
  def change
    create_table :gants do |t|
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
      t.string  :glove_front
      t.string  :glove_back
      t.string  :glove_inner
      t.string  :glove_wrist
      t.string  :glove_one
      t.string  :glove_two
      t.string  :glove_three

      t.timestamps
    end
  end
end
