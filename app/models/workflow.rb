class Workflow < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :workflowtype, presence: true

  has_many :groups
end