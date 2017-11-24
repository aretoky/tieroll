class CreateProductScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :product_scenes do |t|
      t.string :marchandise_scene

      t.timestamps
    end
  end
end
