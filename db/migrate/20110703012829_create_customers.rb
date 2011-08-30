class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string "customercode", :limit => 10
      t.string "name", :limit => 40
      t.string "zipcode", :limit => 4
      t.string "email", :limit => 100 
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
