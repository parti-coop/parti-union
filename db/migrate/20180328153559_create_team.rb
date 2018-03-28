class CreateTeam < ActiveRecord::Migration[5.0]
  def change
    create_table :teams , options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC"  do |t|
      t.string :name
      t.string :profile
      t.string :twitter
      t.string :facebook
      t.string :github
      t.string :blog
      t.text :description
      t.timestamps null: false
    end
  end
end
