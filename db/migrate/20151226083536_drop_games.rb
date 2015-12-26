class DropGames < ActiveRecord::Migration[5.0]
  def change
    drop_table :games
    remove_column :scores, :game_id
  end
end
