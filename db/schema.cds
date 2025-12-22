namespace db;

entity salesHeader {
  key SalesID: Integer @title : 'Sales ID'
                    @description : 'Sales Order ID generated for this sales order';
  CustomerID:String @mandatory;
  CustomerType:String enum {
                    Regular;
                    VIP;
                    New
                };
  OrderValue:Decimal(10,2);
  OrderDate: DateTime;
  Currency:String(3);
  Status:String;
  to_items:Composition of many salesItem on to_items.salesHead = $self;

}

entity salesItem{
    key ItemID: UUID;  
    ProductID: String @mandatory;  
    Quantity: Integer;  
    Price: Decimal(10,2);  
    salesHead: Association to salesHeader
}
