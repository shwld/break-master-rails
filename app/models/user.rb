class User < ApplicationRecord
  belongs_to :platform
  has_many :scores
end
