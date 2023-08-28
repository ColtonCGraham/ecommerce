class RemoveOrderItemsColumnFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :order_item_id
  end
end
