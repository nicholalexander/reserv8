class ChangeTimeTypeReservations < ActiveRecord::Migration
  def change
    change_column :reservations, :start_time, :datetime
  end
end
