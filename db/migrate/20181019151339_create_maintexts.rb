class CreateMaintexts < ActiveRecord::Migration[5.0]
  def change
    create_table :maintexts do |t|
      t.integer :order, null: false
      t.string :slug, null: false
      t.text :body
      t.string :lang, null: false
      t.timestamps null: false
    end
  end
end
