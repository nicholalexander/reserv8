class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street_address
      t.string :street_address_2
      t.string :state
      t.string :zip_code
      t.string :phone
      t.string :website
      t.timestamps
    end
  end
end
