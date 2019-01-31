class AddYoutubeToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :youtube, :string
  end
end
