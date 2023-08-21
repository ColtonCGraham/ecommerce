# frozen_string_literal: true

class AddSaleToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :sale, null: false, foreign_key: true
  end
end
