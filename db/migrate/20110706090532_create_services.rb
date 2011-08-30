class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string 'name', :limit => 40
      t.string 'group', :limit => 40 
      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
