class User < ApplicationRecord
  belongs_to :role
  has_and_belongs_to_many :groups

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :password, length: { minimum: 6 }, allow_blank: true, on: :update

  has_secure_password
end