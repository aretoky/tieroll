class CreateVests < ActiveRecord::Migration[5.1]
  def change
    create_table :vests do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text :description
      t.string :vest_name
      t.string :vest_code
      t.string :v_front
      t.string :v_back
      t.string :v_inner
      t.string :v_buckle
      t.string :v_other

      t.timestamps
    end
  end
end
