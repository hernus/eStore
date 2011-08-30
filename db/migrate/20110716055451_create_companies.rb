class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string 'code', :limit => 4
      t.string 'name', :limit => 40
      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
