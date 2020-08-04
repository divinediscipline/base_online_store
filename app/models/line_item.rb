class LineItem < ApplicationRecord
  # a line item is an item(actually a single product) on the cart
  # two line items can belong to the same product, hence they are the same products on the cart, eg 2 books of the same name
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
