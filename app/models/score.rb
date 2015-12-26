class Score < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :game
end
