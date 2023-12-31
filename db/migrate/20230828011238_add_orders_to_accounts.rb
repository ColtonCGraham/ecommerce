# frozen_string_literal: true

class AddOrdersToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :account, null: true, foreign_key: true
  end
end
