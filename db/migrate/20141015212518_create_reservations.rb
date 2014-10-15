class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date
      t.time :start_time
      t.float :price
      t.references :customer
      t.timestamps
    end
  end
end
