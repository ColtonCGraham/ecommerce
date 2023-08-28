class AddCreditCardToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :credit, :string
  end
end
