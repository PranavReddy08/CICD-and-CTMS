service Northwind {
 
  entity Products {
    key ProductID   : Integer;
    ProductName     : String;
    UnitPrice       : Decimal(13,2);
    UnitsInStock    : Integer;
  }
}