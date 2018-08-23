class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :slug, null: false
      t.string :image
      t.string :url
      t.string :category
      t.string :agent
      t.string :title
      t.text :description
      t.timestamps null: false
    end
  end
end
