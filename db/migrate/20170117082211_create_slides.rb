class CreateSlides < ActiveRecord::Migration[5.0]
  def change
    create_table :slides, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC"  do |t|
      t.integer :order, null: false
      t.string :image, null: false
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
