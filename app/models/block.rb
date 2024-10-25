class Block < ApplicationRecord
  belongs_to :station
  has_many :users

  validates :title, presence: true
  validates :station, presence: true
end