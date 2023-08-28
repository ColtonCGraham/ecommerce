class Addtoorders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :subTotal,:float
    add_column :orders, :grandTotal, :float
    add_column :orders, :gst, :float
    add_column :orders, :pst, :float
  end
end
