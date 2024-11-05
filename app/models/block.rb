class Block < ApplicationRecord
  has_and_belongs_to_many :stations

  validates :title, presence: true
  validates :description, presence: true
  validates :priority, inclusion: { in: %w[Low Medium High] }
  validates :status, inclusion: { in: %w[To\ Do In\ Progress Done] }
end