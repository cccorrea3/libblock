class Workflow < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :status, presence: true
  validates :steps, presence: true

  serialize :steps, Array

  def steps_count
    steps.size
  end
end