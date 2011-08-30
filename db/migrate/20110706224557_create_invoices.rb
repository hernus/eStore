class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.string 'invoice_number', :limit => 10
      t.integer 'customer_id'
      t.date 'invoice_date'
      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
