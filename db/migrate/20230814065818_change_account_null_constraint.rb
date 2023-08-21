# frozen_string_literal: true

class ChangeAccountNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column :accounts, :order_id, :integer, null: true
  end
end
