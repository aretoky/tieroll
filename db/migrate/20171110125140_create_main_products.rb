class CreateMainProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :main_products do |t|
      t.references  :staff_member, foreign_key: true
      t.references  :belt,            foreign_key: true
      t.references  :coat,            foreign_key: true
      t.references  :cuff_link,       foreign_key: true
      t.references  :ear_muffler,     foreign_key: true
      t.references  :gant,            foreign_key: true
      t.references  :hat,             foreign_key: true
      t.references  :jacket,          foreign_key: true
      t.references  :knit,            foreign_key: true
      t.references  :lapel_pin,       foreign_key: true
      t.references  :muffler,         foreign_key: true
      t.references  :other,           foreign_key: true
      t.references  :pant,            foreign_key: true
      t.references  :pocket_chief,    foreign_key: true
      t.references  :shoe,            foreign_key: true
      t.references  :shurt,           foreign_key: true
      t.references  :sock,            foreign_key: true
      t.references  :tie_neck,        foreign_key: true
      t.references  :tie_pin,         foreign_key: true
      t.references  :vest,            foreign_key: true
      t.string      :product_face
      t.string      :name
      t.string      :code
      t.integer     :scene
      t.integer     :season

      t.timestamps
    end
  end
end
