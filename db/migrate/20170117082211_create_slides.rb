class CreateSlides < ActiveRecord::Migration[5.0]
  def change
    create_table :slides do |t|
      t.integer :order, null: false
      t.string :image, null: false
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
