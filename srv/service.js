const cds = require('@sap/cds');

module.exports=cds.service.impl(async function() {
  const northwind = await cds.connect.to('Northwind')
  const { salesHeader, salesItem } = this.entities;
  this.on('READ', 'Northwind', async () => {
        return northwind.run(
        SELECT.from('Products').columns('ProductID', 'ProductName', 'UnitPrice')
    );
  });


  this.before('CREATE', salesHeader, async (req) => {
    const ID=req.data.SalesID;
    if ( req.data.OrderValue < 0){
        req.error('Order value must be a positive number');
    }
    req.data.Status = "Pending";
    const today = new Date();
    const odate = new Date(req.data.OrderDate);
    if (odate > today) {
      req.error('Order date cannot be in the future');
    }
    req.data.CustomerType = req.data.CustomerType || 'Retail'; 
  });

  



})