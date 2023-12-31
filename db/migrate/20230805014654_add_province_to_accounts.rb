# frozen_string_literal: true

class AddProvinceToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_reference :accounts, :province, null: false, foreign_key: true
  end
end
