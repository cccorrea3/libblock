class Group < ApplicationRecord
  has_and_belongs_to_many :users

  validates :name, presence: true
  validates :group_type, presence: true
  validates :description, presence: true
end