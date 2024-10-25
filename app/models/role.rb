class Role < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :permission_level, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  scope :active, -> { where(is_active: true) }
end