class CreateAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
