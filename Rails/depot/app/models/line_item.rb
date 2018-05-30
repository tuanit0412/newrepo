class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart
  # tinh tong tien gan vao total_price
  def total_price
    product.price * quantity
  end
end
