class CreatePatterns < ActiveRecord::Migration[5.1]
  def change
    create_table :patterns do |t|
      t.string :product_pattern

      t.timestamps
    end
  end
end
