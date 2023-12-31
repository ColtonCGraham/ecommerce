# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :basePrice
      t.text :description

      t.timestamps
    end
  end
end
