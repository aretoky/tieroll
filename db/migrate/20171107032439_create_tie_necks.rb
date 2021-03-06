class CreateTieNecks < ActiveRecord::Migration[5.1]
  def change
    create_table :tie_necks do |t|
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
      t.string :tie_one
      t.string :tie_two
      t.string :tie_three
      t.string :tie_four

      t.timestamps
    end
  end
end
