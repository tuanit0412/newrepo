class Product < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  # enum sex: [:Nam, :Nu]
  has_attached_file :image, styles: {medium: "10000x10000>", thumb: "10000x10000>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  # validates :title, presence: true
  belongs_to :type

  private

  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line Items present")
      throw :abort
    end
  end
end
