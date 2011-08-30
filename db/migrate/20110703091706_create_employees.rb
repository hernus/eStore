class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string 'name', :limit => 40
      t.integer 'age'
      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
