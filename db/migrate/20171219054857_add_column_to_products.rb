class AddColumnToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :slug, :string, null: false
  end
end
