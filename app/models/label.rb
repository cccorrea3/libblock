class Label < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :color, presence: true
  
  # You might want to add a custom validation for color format
  validate :valid_color_format

  private

  def valid_color_format
    return if color.blank?
    unless color.match?(/^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$/)
      errors.add(:color, "must be a valid hex color code")
    end
  end
end