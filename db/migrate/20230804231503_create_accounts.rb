class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :address
      t.string :postalCode
      t.string :creditCard
      t.string :address
      t.boolean :isAdmin
      t.string :password

      t.timestamps
    end
  end
end
