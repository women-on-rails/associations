class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :floor
      t.integer :number
      t.string :name
      t.float :price_value
      t.string :price_currency
      t.text :description

      t.timestamps null: false
    end
  end
end
