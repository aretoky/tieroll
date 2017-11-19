class CreateHats < ActiveRecord::Migration[5.1]
  def change
    create_table :hats do |t|
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
      t.string  :hat_front
      t.string  :hat_back
      t.string  :hat_side
      t.string  :hat_roof
      t.string  :hat_sole
      t.string  :hat_inner
      t.string  :hat_one
      t.string  :hat_two

      t.timestamps
    end
  end
end
