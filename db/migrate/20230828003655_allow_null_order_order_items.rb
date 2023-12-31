# frozen_string_literal: true

class AllowNullOrderOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_items, :order, null: true, foreign_key: true
  end
end
