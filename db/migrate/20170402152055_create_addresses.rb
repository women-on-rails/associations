class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :line_3
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
