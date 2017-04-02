class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.float :total_price_value
      t.string :total_price_currency
      t.datetime :date_of_arrival
      t.datetime :date_of_departure

      t.timestamps null: false
    end
  end
end
