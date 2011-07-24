class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.string :address_street
      t.string :address_city
      t.string :address_state
      t.string :address_country
      t.date :date
      t.time :time
      t.string :category
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
