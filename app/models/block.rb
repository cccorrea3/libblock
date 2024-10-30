class Block < ApplicationRecord
  belongs_to :environment

  validates :title, presence: true
  validates :priority, inclusion: { in: %w[Low Medium High] }, allow_nil: true
  validates :status, inclusion: { in: ['To Do', 'In Progress', 'Done'] }, allow_nil: true

  # If you want to use the array fields as arrays in Ruby
  #serialize :roles, Array
  #serialize :pre_conditions, Array
  #serialize :post_conditions, Array
  #serialize :main_flow, Array
  #serialize :alternative_flow, Array
  #serialize :functional_requests, Array
  #serialize :non_functional_requests, Array
  #serialize :associated_stations, Array
end