class CreateUsersScores < ActiveRecord::Migration[5.0]
  def change
    create_table :users_scores do |t|
      t.references :user, index: true, foreign_key: true
      t.references :score, index: true, foreign_key: true
    end
  end
end
