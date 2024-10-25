class Station < ApplicationRecord
  has_and_belongs_to_many :metro_lines
  has_many :blocks

  validates :name, presence: true
end