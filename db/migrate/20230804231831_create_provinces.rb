# frozen_string_literal: true

class CreateProvinces < ActiveRecord::Migration[7.0]
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :abbreviation
      t.float :salesTax

      t.timestamps
    end
  end
end
