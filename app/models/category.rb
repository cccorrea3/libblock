class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :sort_order, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true

  belongs_to :parent, class_name: "Category", optional: true
  has_many :subcategories, class_name: "Category", foreign_key: "parent_id", dependent: :destroy

  scope :root_categories, -> { where(parent_id: nil) }

  def root?
    parent_id.nil?
  end
end