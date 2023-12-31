# frozen_string_literal: true

class AddOrderItemToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_items, :order, null: false, foreign_key: true
  end
end
