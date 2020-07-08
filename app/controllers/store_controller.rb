class StoreController < ApplicationController
  # This controller functions exactly as the products controller except that its for showing data to the buyer
  def index
    @products = Product.order(:title)
  end
end
