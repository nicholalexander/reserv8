class CreateTable < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :number
      t.integer :capacity
      t.string :location
      t.references :restaurant
      t.references :reservation
      t.timestamps
    end
  end
end
