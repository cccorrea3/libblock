class User < ApplicationRecord
  has_secure_password
  belongs_to :role
  has_and_belongs_to_many :groups

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, if: :password_digest_changed?

  has_many :stations
  has_many :blocks
end


