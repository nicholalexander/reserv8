class CreateManager < ActiveRecord::Migration
  def change

    #create the new managers table
    create_table :managers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.timestamps
    end

    #no need to modify restaurant table
    
    #create the join table with references to manager and restaurant
    create_table :managers_restaurants, id: false do |t|
      t.belongs_to :manager
      t.belongs_to :restaurant
    end

  end
end
