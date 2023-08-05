class Category < ApplicationRecord
  has_many :categories_product, dependent: :destroy
  has_many :products, through: :categories_product


end
