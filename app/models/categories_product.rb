# frozen_string_literal: true

class CategoriesProduct < ApplicationRecord
  belongs_to :category
  belongs_to :product
end
