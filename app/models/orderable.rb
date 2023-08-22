class Orderable < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total
    product.basePrice * quantity
  end
end