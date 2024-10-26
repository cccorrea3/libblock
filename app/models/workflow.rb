class Workflow < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :status, presence: true
  validates :steps, presence: true

  store :steps, accessors: [], coder: JSON

  def steps_count
    (steps || []).size
  end
end