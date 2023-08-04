class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.string :name
      t.float :percentOff

      t.timestamps
    end
  end
end
