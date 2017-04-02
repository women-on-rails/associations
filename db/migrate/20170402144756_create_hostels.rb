class CreateHostels < ActiveRecord::Migration
  def change
    create_table :hostels do |t|
      t.string :name
      t.text :image_url
      t.text :description

      t.timestamps null: false
    end
  end
end
