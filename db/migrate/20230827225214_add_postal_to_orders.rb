# frozen_string_literal: true

class AddPostalToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :postalCode, :string
  end
end
