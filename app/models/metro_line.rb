class MetroLine < ApplicationRecord
  has_and_belongs_to_many :stations
  has_many :blocks, through: :stations

  validates :name, presence: true
  validates :color, presence: true
end