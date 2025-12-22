using db from '../db/schema';
using Northwind from './external/northwind';
@restrict:[{grant:'*',to:'Admin'},
            {grant:'READ',to:'Viewer'}]

service salesService @(requires:'authenticated-user'){

    @odata.draft.enabled
    entity salesHeader as projection on db.salesHeader{
        *,
        to_items
    }
    entity salesItem as projection on db.salesItem;
    entity North as projection on Northwind.Products;
}