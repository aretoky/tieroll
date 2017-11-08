class CreateCuffLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :cuff_links do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text    :description
      t.text    :raw_materials
      t.string  :cuff_link_one
      t.string  :cuff_link_two
      t.string  :cuff_link_three
      t.string  :cuff_link_four
      t.string  :cuff_link_five
      t.string  :cuff_link_six
      t.string  :cuff_link_seven

      t.timestamps
    end
  end
end
