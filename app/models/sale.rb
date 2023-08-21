# frozen_string_literal: true

class Sale < ApplicationRecord
  has_many :products
end
