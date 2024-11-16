class Station < ApplicationRecord
  has_and_belongs_to_many :blocks

  validates :name, presence: true
  validates :description, presence: true
end