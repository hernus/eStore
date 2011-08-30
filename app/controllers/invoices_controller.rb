class InvoicesController < ApplicationController


  def list
  end
  
  def list_customer_invoices
  	@customer = Customer.find(params[:id])
  	@invoices = @customer.invoices  	
  end
  
  def edit
    @invoice = Invoice.find(params[:id])
    @items = @invoice.invoice_items
    @etag = Etag.new
  end
  
  def update
   @invoice = Invoice.find(params[:id])
   @invoice.update_attributes(params[:invoice])
   @invoice.save
   redirect_to(:action => 'list_customer_invoices', :id => @invoice.customer.id )
  end
  
  def append_item
  	@invoice = Invoice.find(params[:id])
  	@item = InvoiceItem.new(params[:item])
  	@item.amount = @item.qty * @item.price
  	@invoice.invoice_items << @item
  	@invoice.save
    redirect_to(:action => 'edit', :id => @invoice.id )
  end	
  def delete_item
  	@item = InvoiceItem.find(params[:id])
  	@invoice = @item.invoice
  	@item.destroy
    redirect_to(:action => 'edit', :id => @invoice.id )  	
  end	
    
end
