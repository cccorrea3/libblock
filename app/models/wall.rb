class Wall < ApplicationRecord
  has_and_belongs_to_many :blocks

  validates :name, presence: true
  validates :visibility, inclusion: { in: %w[public private], message: "%{value} is not a valid visibility" }
  validates :walltype, inclusion: { in: %w[standard custom], message: "%{value} is not a valid wall type" }

  def block_titles
    blocks.pluck(:title)
  end
end