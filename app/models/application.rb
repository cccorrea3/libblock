class Application < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :status, presence: true
  validates :app_type, presence: true
  validates :version, presence: true

  # Add any associations or additional validations as needed
end