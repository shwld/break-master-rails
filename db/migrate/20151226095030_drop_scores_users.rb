class DropScoresUsers < ActiveRecord::Migration[5.0]
  def change
    drop_table :users_scores
    drop_table :scores_users
    add_column :scores, :user_id, :integer
  end
end
