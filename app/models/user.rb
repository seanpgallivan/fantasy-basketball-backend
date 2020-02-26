class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  has_many :teams
  has_many :leagues, through: :teams
end