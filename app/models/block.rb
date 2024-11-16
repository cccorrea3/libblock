class Block < ApplicationRecord
  has_and_belongs_to_many :stations
  has_and_belongs_to_many :walls

  validates :title, presence: true
  validates :description, presence: true
  validates :priority, presence: true
  validates :status, presence: true
end