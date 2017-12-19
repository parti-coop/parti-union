class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC"  do |t|
      t.string :title, null: false
      t.string :unit
      t.integer :price, null: false
      t.string :image
      t.text :description

      t.timestamps null: false
    end
  end
end
