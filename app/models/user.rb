class User < ApplicationRecord
  has_many :artworks
  validates :username, uniqueness: true
end
