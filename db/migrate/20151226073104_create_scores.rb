class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.decimal :score
      t.integer :game_id

      t.timestamps
    end
  end
end
