class Size < ApplicationRecord
  has_many :size_details
  has_many :products, through: :size_details
  has_many :line_items
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
end
