# frozen_string_literal: true

class OrderItem < ApplicationRecord
  has_one :product
  belongs_to :order, optional: true
end
