class ChangeTimeTypeReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :start_time
  end
end
