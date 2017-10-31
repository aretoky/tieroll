class CreateJackets < ActiveRecord::Migration[5.1]
  def change
    create_table :jackets do |t|
      t.references :staff_member, foreign_key: true
      t.integer :price
      t.integer :size
      t.integer :color
      t.integer :pattern
      t.integer :season
      t.integer :scene
      t.text :description
      t.string :jacket_name
      t.string :jacket_code
      t.string :j_front
      t.string :j_back
      t.string :open_front
      t.string :closed_front
      t.string :j_cuff
      t.string :lapel
      t.string :j_inner
      t.string :j_inner_r
      t.string :j_inner_l
      t.string :j_button
      t.string :j_pocket
      t.string :j_breast_pocket
      t.string :j_other_one
      t.string :j_other_two

      t.timestamps
    end
  end
end
