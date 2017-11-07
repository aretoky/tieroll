class CreateKnits < ActiveRecord::Migration[5.1]
  def change
    create_table :knits do |t|
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text    :description
      t.text    :raw_materials
      t.string  :knit_name
      t.string  :knit_code
      t.string  :knit_front
      t.string  :knit_back
      t.string  :knit_hem
      t.string  :knit_collar
      t.string  :knit_inner
      t.string  :knit_neck
      t.string  :knit_one
      t.string  :knit_two
      t.string  :knit_three

      t.timestamps
    end
  end
end
