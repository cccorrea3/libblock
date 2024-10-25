class Environment < ApplicationRecord
  validates :name, presence: true
  
  # Add any associations or validations as needed
end