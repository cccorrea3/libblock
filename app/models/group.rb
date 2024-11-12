class Group < ApplicationRecord
  validates :name, presence: true
  validates :group_type, presence: true
  validates :description, presence: true
end