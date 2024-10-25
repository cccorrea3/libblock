class User < ApplicationRecord
  belongs_to :role
  has_and_belongs_to_many :groups

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :role, presence: true
end