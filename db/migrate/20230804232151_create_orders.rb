class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :orderStatus
      t.text :orderNote
      t.float :savedPrice

      t.timestamps
    end
  end
end
