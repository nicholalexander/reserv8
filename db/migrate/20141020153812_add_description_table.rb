class AddDescriptionTable < ActiveRecord::Migration
  def change 
    add_column :tables, :notes, :string
  end
end
