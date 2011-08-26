class CreateTrips < ActiveRecord::Migration
  def self.up
    create_table :trips do |t|
      t.integer :vehicle_id
      t.datetime :date
      t.integer :distance
      t.string :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :trips
  end
end
