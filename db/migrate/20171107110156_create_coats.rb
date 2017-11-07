class CreateCoats < ActiveRecord::Migration[5.1]
  def change
    create_table :coats do |t|
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text    :description
      t.text    :raw_materials
      t.string  :coat_name
      t.string  :coat_code
      t.string  :coat_front
      t.string  :coat_back
      t.string  :coat_open_front
      t.string  :coat_closed_front
      t.string  :coat_inner
      t.string  :coat_inner_r
      t.string  :coat_inner_l
      t.string  :coat_lapel
      t.string  :coat_pocket
      t.string  :coat_breast_pocket
      t.string  :coat_bents
      t.string  :coat_one
      t.string  :coat_two
      t.string  :coat_three
      t.timestamps
    end
  end
end
