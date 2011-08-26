class CreatePurposes < ActiveRecord::Migration
  def self.up
    create_table :purposes do |t|
      t.integer :trip_id
      t.integer :purpose_id

      t.timestamps
    end
  end

  def self.down
    drop_table :purposes
  end
end
