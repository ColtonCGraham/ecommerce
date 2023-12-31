# frozen_string_literal: true

class AddOrderToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :account, null: false, foreign_key: true
  end
end
