# frozen_string_literal: true

class Product < ApplicationRecord
  has_many_attached :pictures
  has_one_attached :image
  belongs_to :sale
  has_and_belongs_to_many :categories
  paginates_per 25
  has_many :orderables
  has_many :carts, through: :orderables
  accepts_nested_attributes_for :categories

  def price
    if sale !=nil
       return (basePrice - (basePrice*(sale.percentOff*0.01))).truncate(2)
    else
     return  basePrice
    end
  end

  def onSale
    if sale !=nil && sale.name != 'Not On Sale'
       return true
    else
     return  false
    end
  end
end
