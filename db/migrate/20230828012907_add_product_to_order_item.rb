# frozen_string_literal: true

class AddProductToOrderItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_items, :product, null: true, foreign_key: true
  end
end
