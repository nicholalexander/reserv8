class AddOwnerToManager < ActiveRecord::Migration
  def change
    add_column :managers, :owner, :boolean, default: false
  end
end
