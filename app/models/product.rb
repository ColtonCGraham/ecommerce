# frozen_string_literal: true

class Product < ApplicationRecord
  has_many_attached :pictures
  has_one_attached :image
  has_one :sale
  has_and_belongs_to_many :categories
  paginates_per 25
  has_many :orderables
  has_many :carts, through: :orderables
  accepts_nested_attributes_for :categories
end
