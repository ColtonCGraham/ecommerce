# frozen_string_literal: true

class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.text :content
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
