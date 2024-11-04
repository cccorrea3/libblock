class Block < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :priority, inclusion: { in: %w[Low Medium High] }
  validates :status, inclusion: { in: %w[To\ Do In\ Progress Done] }
end