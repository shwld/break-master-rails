class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.string :thumbnail
      t.string :url

      t.timestamps
    end
  end
end
