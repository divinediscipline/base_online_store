class Cart < ApplicationRecord
  # this is where all the items selected to be bought by a user is stored temporarily
  # a cart contains many line items, the line items are infact products that can occur multiple times since a user can buy 2,3 or 4 of the same product 
  has_many :line_items, dependent: :destroy




  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product.id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
