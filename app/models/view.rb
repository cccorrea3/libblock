class View < ApplicationRecord
  validates :name, presence: true
  validates :view_type, presence: true
  validates :sort_order, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
  
  # Add any associations or additional validations as needed
end