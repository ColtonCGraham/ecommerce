# frozen_string_literal: true

class Category < ApplicationRecord
  has_and_belongs_to_many :products
  accepts_nested_attributes_for :products
  validates :name, presence: true
end
