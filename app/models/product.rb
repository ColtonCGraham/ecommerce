class Product < ApplicationRecord
  has_many :categories_product, dependent: :destroy
  has_many :categories, through: :categories_product

  has_one :sale
end
