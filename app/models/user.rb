class User < ApplicationRecord
  has_and_belongs_to_many :scores
  belongs_to :platform
end
