class CreateScoresUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :scores_users do |t|
      t.references :score, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
