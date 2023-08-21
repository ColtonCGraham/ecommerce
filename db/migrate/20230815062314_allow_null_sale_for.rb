# frozen_string_literal: true

class AllowNullSaleFor < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :sale_id, :integer, null: true
  end
end
