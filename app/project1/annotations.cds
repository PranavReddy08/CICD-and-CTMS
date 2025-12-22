using salesService as service from '../../srv/service';
annotate service.salesHeader with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'CustomerID',
                Value : CustomerID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerType',
                Value : CustomerType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrderValue',
                Value : OrderValue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrderDate',
                Value : OrderDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Currency_code',
                Value : Currency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {$Type:'UI.ReferenceFacet',
        Label:'Items',
        Target:'to_items/@UI.LineItem'}
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'CustomerID',
            Value : CustomerID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CustomerType',
            Value : CustomerType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OrderValue',
            Value : OrderValue,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OrderDate',
            Value : OrderDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Currency_code',
            Value : Currency_code,
        },
    ],
);

annotate service.salesItem  with @( 
    UI.LineItem:[
        {
            $Type : 'UI.DataField',
            Label : 'ItemID',
            Value : ItemID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Quantity',
            Value : Quantity,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Price',
            Value : Price,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Product ID',
            Value : ProductID,
        },
        
    ]
) ;


