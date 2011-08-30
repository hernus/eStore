class CreateInvoiceItems < ActiveRecord::Migration
  def self.up
    create_table :invoice_items do |t|
      t.string  'product', :limit => 60
      t.integer 'qty'
      t.float   'price'
      t.float   'amount'
      t.timestamps
    end
  end

  def self.down
    drop_table :invoice_items
  end
end
