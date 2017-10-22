class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.references :product_id
      t.string :j_front
      t.string :j_back
      t.string :open_front
      t.string :closed_front
      t.string :lapel
      t.string :j_hem
      t.string :j_button
      t.string :j_inner
      t.string :j_r_inner
      t.string :j_l_inner
      t.string :j_pocket
      t.string :j_breast_pocket
      t.string :s_front
      t.string :s_back
      t.string :s_hem
      t.string :s_button
      t.string :s_breast_pocket
      t.string :colar
      t.string :p_front
      t.string :p_back
      t.string :p_inner
      t.string :belt_roop
      t.string :v_front
      t.string :v_back
      t.string :v_inner
      t.string :v_buckle
      t.string :tie_one
      t.string :tie_two
      t.string :belt_one
      t.string :belt_two
      t.string :shoes_one
      t.string :shoes_two
      t.string :shoes_three
      t.string :other_one
      t.string :other_two
      t.string :other_three
      t.string :other_four
      t.string :other_five
      t.timestamps
    end
  end
end
