// using PurchaseOrderService as service from '../../srv/service';

// annotate service.PurchaseOrders with @(
//     UI.HeaderInfo : {
//         TypeName : 'Purchase Order',
//         TypeNamePlural : 'Purchase Orders',
//         Title : {
//             Value : poNumber
//         },
//         Description : {
//             Value : status
//         }
//     },

//     UI.SelectionFields : [
//         poNumber,
//         supplier_ID,
//         status
//     ],

//     UI.LineItem : [
//         {
//             Value : poNumber,
//             Label : 'PO Number'
//         },
//         {
//             Value : supplier.name,
//             Label : 'Supplier'
//         },
//         {
//             Value : status,
//             Label : 'Status'
//         },
//         {
//             Value : totalAmount,
//             Label : 'Total'
//         }
//     ]
// ) {

//     supplier @Common.ValueList : {
//         CollectionPath : 'Suppliers',
//         Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : supplier_ID,
//                 ValueListProperty : 'ID'
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'name'
//             }
//         ]
//     };

//     totalAmount @UI.DataPoint : {
//         Title : 'Total Amount'
//     };

//     status @UI.Criticality : criticality;
// };

// annotate service.POItems with @(
//     UI.LineItem : [
//         {
//             Value : product.name,
//             Label : 'Product'
//         },
//         {
//             Value : quantity,
//             Label : 'Quantity'
//         },
//         {
//             Value : unitPrice,
//             Label : 'Unit Price'
//         },
//         {
//             Value : amount,
//             Label : 'Amount'
//         }
//     ]
// ) {

//     product @Common.ValueList : {
//         CollectionPath : 'Products',
//         Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : product_ID,
//                 ValueListProperty : 'ID'
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'name'
//             }
//         ]
//     };
// };

// using PurchaseOrderService as service from '../../srv/service';

// annotate service.PurchaseOrders with @(
//     UI.HeaderInfo : {
//         TypeName : 'Purchase Order',
//         TypeNamePlural : 'Purchase Orders',
//         Title : {
//             Value : poNumber
//         },
//         Description : {
//             Value : status
//         }
//     },

//     UI.SelectionFields : [
//         poNumber,
//         supplier_ID,
//         status
//     ],

//     UI.LineItem : [
//         {
//             Value : poNumber,
//             Label : 'PO Number'
//         },
//         {
//             Value : supplier.name,
//             Label : 'Supplier'
//         },
//         {
//             Value : status,
//             Label : 'Status'
//         },
//         {
//             Value : totalAmount,
//             Label : 'Total Amount'
//         }
//     ]
// ) {

//     supplier @(
//         Common.ValueList : {
//             CollectionPath : 'Suppliers',
//             Parameters : [
//                 {
//                     $Type : 'Common.ValueListParameterInOut',
//                     LocalDataProperty : supplier_ID,
//                     ValueListProperty : 'ID'
//                 },
//                 {
//                     $Type : 'Common.ValueListParameterDisplayOnly',
//                     ValueListProperty : 'name'
//                 }
//             ]
//         },

//         Common.FieldControl : #ReadOnly
//     );

//     totalAmount @UI.DataPoint : {
//         Title : 'Total Amount'
//     };

//     status @UI.Criticality : criticality;
// };

// annotate service.POItems with @(
//     UI.LineItem : [
//         {
//             Value : product.name,
//             Label : 'Product'
//         },
//         {
//             Value : quantity,
//             Label : 'Quantity'
//         },
//         {
//             Value : unitPrice,
//             Label : 'Unit Price'
//         },
//         {
//             Value : amount,
//             Label : 'Amount'
//         }
//     ],

//     Common.SideEffects #Recalc : {
//         SourceProperties : ['quantity'],
//         TargetProperties : ['amount']
//     }
// ) {

//     product @Common.ValueList : {
//         CollectionPath : 'Products',
//         Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : product_ID,
//                 ValueListProperty : 'ID'
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'name'
//             }
//         ]
//     };
// };


// annotate service.PurchaseOrders with @(
//     UI.Identification : [
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'PurchaseOrderService.submitOrder',
//             Label : 'Submit'
//         },
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'PurchaseOrderService.approveOrder',
//             Label : 'Approve'
//         },
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'PurchaseOrderService.rejectOrder',
//             Label : 'Reject'
//         }
//     ]
// );



// using PurchaseOrderService as service from '../../srv/service';

// annotate service.PurchaseOrders with @(
//     UI.HeaderInfo : {
//         TypeName : 'Purchase Order',
//         TypeNamePlural : 'Purchase Orders',
//         Title : {
//             Value : poNumber
//         },
//         Description : {
//             Value : status
//         }
//     },

//     UI.SelectionFields : [
//         poNumber,
//         supplier_ID,
//         status
//     ],

//     UI.LineItem : [
//         {
//             Value : poNumber,
//             Label : 'PO Number'
//         },
//         {
//             Value : supplier.name,
//             Label : 'Supplier'
//         },
//         {
//             Value : status,
//             Label : 'Status'
//         },
//         {
//             Value : totalAmount,
//             Label : 'Total Amount'
//         }
//     ],

//     UI.Identification : [
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'PurchaseOrderService.submitOrder',
//             Label : 'Submit'
//         },
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'PurchaseOrderService.approveOrder',
//             Label : 'Approve'
//         },
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'PurchaseOrderService.rejectOrder',
//             Label : 'Reject'
//         }
//     ]
// ) {

//     supplier @(
//         Common.ValueList : {
//             CollectionPath : 'Suppliers',
//             Parameters : [
//                 {
//                     $Type : 'Common.ValueListParameterInOut',
//                     LocalDataProperty : supplier_ID,
//                     ValueListProperty : 'ID'
//                 },
//                 {
//                     $Type : 'Common.ValueListParameterDisplayOnly',
//                     ValueListProperty : 'name'
//                 }
//             ]
//         },

//         Common.FieldControl : #ReadOnly
//     );

//     totalAmount @UI.DataPoint : {
//         Title : 'Total Amount'
//     };

//     status @UI.Criticality : criticality;
// };

// annotate service.POItems with @(
//     UI.LineItem : [
//         {
//             Value : product.name,
//             Label : 'Product'
//         },
//         {
//             Value : quantity,
//             Label : 'Quantity'
//         },
//         {
//             Value : unitPrice,
//             Label : 'Unit Price'
//         },
//         {
//             Value : amount,
//             Label : 'Amount'
//         }
//     ],

//     Common.SideEffects #Recalc : {
//         SourceProperties : ['quantity'],
//         TargetProperties : ['amount']
//     }
// ) {

//     product @Common.ValueList : {
//         CollectionPath : 'Products',
//         Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : product_ID,
//                 ValueListProperty : 'ID'
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'name'
//             }
//         ]
//     };
// };


// using PurchaseOrderService as service from '../../srv/service';

// annotate service.PurchaseOrders with @(

//     UI.HeaderInfo : {
//         TypeName : 'Purchase Order',
//         TypeNamePlural : 'Purchase Orders',
//         Title : {
//             Value : poNumber
//         },
//         Description : {
//             Value : status
//         }
//     },

//     UI.SelectionFields : [
//         poNumber,
//         supplier_ID,
//         status
//     ],

//     UI.LineItem : [
//         {
//             Value : poNumber,
//             Label : 'PO Number'
//         },
//         {
//             Value : supplier.name,
//             Label : 'Supplier'
//         },
//         {
//             Value : status,
//             Label : 'Status'
//         },
//         {
//             Value : totalAmount,
//             Label : 'Total Amount'
//         }
//     ],

//     UI.Identification : [
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'PurchaseOrderService.submitOrder',
//             Label : 'Submit'
//         },
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'PurchaseOrderService.approveOrder',
//             Label : 'Approve'
//         },
//         {
//             $Type : 'UI.DataFieldForAction',
//             Action : 'PurchaseOrderService.rejectOrder',
//             Label : 'Reject'
//         }
//     ],

//     UI.Facets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             Label : 'General Information',
//             Target : '@UI.FieldGroup#General'
//         },
//         {
//             $Type : 'UI.ReferenceFacet',
//             Label : 'Items',
//             Target : 'items/@UI.LineItem'
//         }
//     ],

//     UI.FieldGroup #General : {
//         Data : [
//             {
//                 Value : poNumber
//             },
//             {
//                 Value : supplier_ID
//             },
//             {
//                 Value : orderDate
//             },
//             {
//                 Value : status
//             },
//             {
//                 Value : totalAmount
//             }
//         ]
//     }

// ) {

//     supplier @(
//         Common.ValueList : {
//             CollectionPath : 'Suppliers',
//             Parameters : [
//                 {
//                     $Type : 'Common.ValueListParameterInOut',
//                     LocalDataProperty : supplier_ID,
//                     ValueListProperty : 'ID'
//                 },
//                 {
//                     $Type : 'Common.ValueListParameterDisplayOnly',
//                     ValueListProperty : 'name'
//                 }
//             ]
//         },

//         Common.FieldControl : #ReadOnly
//     );

//     totalAmount @UI.DataPoint : {
//         Title : 'Total Amount'
//     };

//     status @UI.Criticality : criticality;
// };

// annotate service.POItems with @(

//     UI.LineItem : [
//         {
//             Value : product.name,
//             Label : 'Product'
//         },
//         {
//             Value : quantity,
//             Label : 'Quantity'
//         },
//         {
//             Value : unitPrice,
//             Label : 'Unit Price'
//         },
//         {
//             Value : amount,
//             Label : 'Amount'
//         }
//     ],

//     Common.SideEffects #Recalc : {
//         SourceProperties : ['quantity'],
//         TargetProperties : ['amount']
//     }

// ) {

//     product @Common.ValueList : {
//         CollectionPath : 'Products',
//         Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : product_ID,
//                 ValueListProperty : 'ID'
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'name'
//             }
//         ]
//     };
// };



// using PurchaseOrderService as service from '../../srv/service';

// annotate service.PurchaseOrders with @(

//     UI.HeaderInfo : {
//         TypeName       : 'Purchase Order',
//         TypeNamePlural : 'Purchase Orders',
//         Title          : { Value : poNumber },
//         Description    : { Value : status }
//     },

//     UI.SelectionFields : [
//         poNumber,
//         supplier_ID,
//         status
//     ],

//     UI.LineItem : [
//         { Value : poNumber,       Label : 'PO Number'    },
//         { Value : supplier.name,  Label : 'Supplier'     },
//         { Value : status,         Label : 'Status'       },
//         { Value : totalAmount,    Label : 'Total Amount' }
//     ],

//     UI.FieldGroup #GeneralInfo : {
//         $Type : 'UI.FieldGroupType',
//         Label : 'General Information',
//         Data  : [
//             { Value : poNumber,      Label : 'PO Number'    },
//             { Value : orderDate,     Label : 'Order Date'   },
//             { Value : status,        Label : 'Status'       },
//             { Value : totalAmount,   Label : 'Total Amount' },
//             { Value : supplier.name, Label : 'Supplier'     }
//         ]
//     },

//     UI.Facets : [
//         {
//             $Type  : 'UI.ReferenceFacet',
//             ID     : 'GeneralInfoSection',
//             Label  : 'General Information',
//             Target : '@UI.FieldGroup#GeneralInfo'
//         },
//         {
//             $Type  : 'UI.ReferenceFacet',
//             ID     : 'ItemsSection',
//             Label  : 'Items',
//             Target : 'items/@UI.LineItem'
//         }
//     ]
// );

// annotate service.POItems with @(
//     UI.LineItem : [
//         { Value : product.name, Label : 'Product'    },
//         { Value : quantity,     Label : 'Quantity'   },
//         { Value : unitPrice,    Label : 'Unit Price' },
//         { Value : amount,       Label : 'Amount'     }
//     ]
// );



// using PurchaseOrderService as service from '../../srv/service';

// annotate service.PurchaseOrders with @(

//     UI.HeaderInfo : {

//         TypeName       : 'Purchase Order',

//         TypeNamePlural : 'Purchase Orders',

//         Title : {
//             Value : poNumber
//         },

//         Description : {
//             Value : status
//         }
//     },

//     UI.SelectionFields : [

//         poNumber,
//         supplier_ID,
//         status
//     ],

//     UI.LineItem : [

//         {
//             Value : poNumber,
//             Label : 'PO Number'
//         },

//         {
//             Value : supplier.name,
//             Label : 'Supplier'
//         },

//         {
//             Value : status,
//             Label : 'Status'
//         },

//         {
//             Value : totalAmount,
//             Label : 'Total Amount'
//         }
//     ],

//     UI.Identification : [

//         {
//             $Type  : 'UI.DataFieldForAction',

//             Action : 'PurchaseOrderService.submitOrder',

//             Label  : 'Submit'
//         },

//         {
//             $Type  : 'UI.DataFieldForAction',

//             Action : 'PurchaseOrderService.approveOrder',

//             Label  : 'Approve'
//         },

//         {
//             $Type  : 'UI.DataFieldForAction',

//             Action : 'PurchaseOrderService.rejectOrder',

//             Label  : 'Reject'
//         }
//     ],

//     UI.FieldGroup #GeneralInfo : {

//         $Type : 'UI.FieldGroupType',

//         Label : 'General Information',

//         Data : [

//             {
//                 Value : poNumber,
//                 Label : 'PO Number'
//             },

//             {
//                 Value : supplier.name,
//                 Label : 'Supplier'
//             },

//             {
//                 Value : orderDate,
//                 Label : 'Order Date'
//             },

//             {
//                 Value : status,
//                 Label : 'Status'
//             },

//             {
//                 Value : totalAmount,
//                 Label : 'Total Amount'
//             }
//         ]
//     },

//     UI.Facets : [

//         {
//             $Type  : 'UI.ReferenceFacet',

//             ID     : 'GeneralInfoSection',

//             Label  : 'General Information',

//             Target : '@UI.FieldGroup#GeneralInfo'
//         },

//         {
//             $Type  : 'UI.ReferenceFacet',

//             ID     : 'ItemsSection',

//             Label  : 'Items',

//             Target : 'items/@UI.LineItem'
//         }
//     ]

// ) {

//     supplier @(

//         Common.ValueList : {

//             CollectionPath : 'Suppliers',

//             Parameters : [

//                 {
//                     $Type : 'Common.ValueListParameterInOut',

//                     LocalDataProperty : supplier_ID,

//                     ValueListProperty : 'ID'
//                 },

//                 {
//                     $Type : 'Common.ValueListParameterDisplayOnly',

//                     ValueListProperty : 'name'
//                 }
//             ]
//         },

//         Common.FieldControl : #ReadOnly
//     );

//     totalAmount @UI.DataPoint : {

//         Title : 'Total Amount'
//     };

//     status @UI.Criticality : criticality;
// };

// annotate service.POItems with @(

//     UI.LineItem : [

//         {
//             Value : product.name,
//             Label : 'Product'
//         },

//         {
//             Value : quantity,
//             Label : 'Quantity'
//         },

//         {
//             Value : unitPrice,
//             Label : 'Unit Price'
//         },

//         {
//             Value : amount,
//             Label : 'Amount'
//         }
//     ],

//     Common.SideEffects #Recalc : {

//         SourceProperties : ['quantity'],

//         TargetProperties : ['amount']
//     }

// ) {

//     product @Common.ValueList : {

//         CollectionPath : 'Products',

//         Parameters : [

//             {
//                 $Type : 'Common.ValueListParameterInOut',

//                 LocalDataProperty : product_ID,

//                 ValueListProperty : 'ID'
//             },

//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',

//                 ValueListProperty : 'name'
//             }
//         ]
//     };
// };


// using PurchaseOrderService as service from '../../srv/service';

// annotate service.PurchaseOrders with @(

//     UI.HeaderInfo : {

//         TypeName       : 'Purchase Order',

//         TypeNamePlural : 'Purchase Orders',

//         Title : {
//             Value : poNumber
//         },

//         Description : {
//             Value : status
//         }
//     },

//     UI.SelectionFields : [

//         poNumber,
//         supplier_ID,
//         status
//     ],

//     UI.LineItem : [

//         {
//             Value : poNumber,
//             Label : 'PO Number'
//         },

//         {
//             Value : supplier.name,
//             Label : 'Supplier'
//         },

//         {
//             Value : status,
//             Label : 'Status'
//         },

//         {
//             Value : totalAmount,
//             Label : 'Total Amount'
//         }
//     ],

//     UI.Identification : [

//         {
//             $Type  : 'UI.DataFieldForAction',

//             Action : 'PurchaseOrderService.submitOrder',

//             Label  : 'Submit'
//         },

//         {
//             $Type  : 'UI.DataFieldForAction',

//             Action : 'PurchaseOrderService.approveOrder',

//             Label  : 'Approve'
//         },

//         {
//             $Type  : 'UI.DataFieldForAction',

//             Action : 'PurchaseOrderService.rejectOrder',

//             Label  : 'Reject'
//         }
//     ],

//     UI.FieldGroup #GeneralInfo : {

//         $Type : 'UI.FieldGroupType',

//         Label : 'General Information',

//         Data : [

//             {
//                 Value : poNumber,
//                 Label : 'PO Number'
//             },

//             {
//                 Value : supplier.name,
//                 Label : 'Supplier'
//             },

//             {
//                 Value : orderDate,
//                 Label : 'Order Date'
//             },

//             {
//                 Value : status,
//                 Label : 'Status'
//             },

//             {
//                 Value : totalAmount,
//                 Label : 'Total Amount'
//             }
//         ]
//     },

//     UI.Facets : [

//         {
//             $Type  : 'UI.ReferenceFacet',

//             ID     : 'GeneralInfoSection',

//             Label  : 'General Information',

//             Target : '@UI.FieldGroup#GeneralInfo'
//         },

//         {
//             $Type  : 'UI.ReferenceFacet',

//             ID     : 'ItemsSection',

//             Label  : 'Items',

//             Target : 'items/@UI.LineItem'
//         }
//     ]

// ) {

//     supplier @(

//         Common.ValueList : {

//             CollectionPath : 'Suppliers',

//             Parameters : [

//                 {
//                     $Type : 'Common.ValueListParameterInOut',

//                     LocalDataProperty : supplier_ID,

//                     ValueListProperty : 'ID'
//                 },

//                 {
//                     $Type : 'Common.ValueListParameterDisplayOnly',

//                     ValueListProperty : 'name'
//                 }
//             ]
//         },

//         Common.FieldControl : #ReadOnly
//     );

//     totalAmount @UI.DataPoint : {

//         Title : 'Total Amount'
//     };

//     status @UI.Criticality : criticality;
// };

// annotate service.POItems with @(

//     UI.HeaderInfo : {

//         TypeName       : 'PO Item',

//         TypeNamePlural : 'PO Items',

//         Title : {
//             Value : product.name
//         }
//     },

//     UI.LineItem : [

//         {
//             Value : product.name,
//             Label : 'Product'
//         },

//         {
//             Value : quantity,
//             Label : 'Quantity'
//         },

//         {
//             Value : unitPrice,
//             Label : 'Unit Price'
//         },

//         {
//             Value : amount,
//             Label : 'Amount'
//         }
//     ],

//     UI.FieldGroup #ItemInfo : {

//         $Type : 'UI.FieldGroupType',

//         Label : 'Item Information',

//         Data : [

//             {
//                 Value : product.name,
//                 Label : 'Product'
//             },

//             {
//                 Value : quantity,
//                 Label : 'Quantity'
//             },

//             {
//                 Value : unitPrice,
//                 Label : 'Unit Price'
//             },

//             {
//                 Value : amount,
//                 Label : 'Amount'
//             }
//         ]
//     },

//     UI.Facets : [

//         {
//             $Type  : 'UI.ReferenceFacet',

//             ID     : 'ItemInfoSection',

//             Label  : 'Item Details',

//             Target : '@UI.FieldGroup#ItemInfo'
//         }
//     ],

//     Common.SideEffects #Recalc : {

//         SourceProperties : ['quantity'],

//         TargetProperties : ['amount']
//     }

// ) {

//     product @Common.ValueList : {

//         CollectionPath : 'Products',

//         Parameters : [

//             {
//                 $Type : 'Common.ValueListParameterInOut',

//                 LocalDataProperty : product_ID,

//                 ValueListProperty : 'ID'
//             },

//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',

//                 ValueListProperty : 'name'
//             }
//         ]
//     };
// };


using PurchaseOrderService as service from '../../srv/service';

annotate service.PurchaseOrders with @(

    UI.HeaderInfo : {

        TypeName       : 'Purchase Order',

        TypeNamePlural : 'Purchase Orders',

        Title : {
            Value : poNumber
        },

        Description : {
            Value : status
        }
    },

    UI.SelectionFields : [

        poNumber,
        supplier_ID,
        status
    ],

    UI.LineItem : [

        {
            Value : poNumber,
            Label : 'PO Number'
        },

        {
            Value : supplier.name,
            Label : 'Supplier'
        },

        {
            Value : status,
            Label : 'Status'
        },

        {
            Value : totalAmount,
            Label : 'Total Amount'
        }
    ],

    UI.Identification : [

        {
            $Type  : 'UI.DataFieldForAction',

            Action : 'PurchaseOrderService.submitOrder',

            Label  : 'Submit'
        },

        {
            $Type  : 'UI.DataFieldForAction',

            Action : 'PurchaseOrderService.approveOrder',

            Label  : 'Approve'
        },

        {
            $Type  : 'UI.DataFieldForAction',

            Action : 'PurchaseOrderService.rejectOrder',

            Label  : 'Reject'
        }
    ],

    UI.FieldGroup #GeneralInfo : {

        $Type : 'UI.FieldGroupType',

        Label : 'General Information',

        Data : [

            {
                Value : poNumber,
                Label : 'PO Number'
            },

            {
                Value : supplier.name,
                Label : 'Supplier'
            },

            {
                Value : orderDate,
                Label : 'Order Date'
            },

            {
                Value : status,
                Label : 'Status'
            },

            {
                Value : totalAmount,
                Label : 'Total Amount'
            }
        ]
    },

    UI.Facets : [

        {
            $Type  : 'UI.ReferenceFacet',

            ID     : 'GeneralInfoSection',

            Label  : 'General Information',

            Target : '@UI.FieldGroup#GeneralInfo'
        },

        {
            $Type  : 'UI.ReferenceFacet',

            ID     : 'ItemsSection',

            Label  : 'Items',

            Target : 'items/@UI.LineItem'
        }
    ]

) {

    supplier @(

        Common.ValueList : {

            CollectionPath : 'Suppliers',

            Parameters : [

                {
                    $Type : 'Common.ValueListParameterInOut',

                    LocalDataProperty : supplier_ID,

                    ValueListProperty : 'ID'
                },

                {
                    $Type : 'Common.ValueListParameterDisplayOnly',

                    ValueListProperty : 'name'
                }
            ]
        },

        Common.FieldControl : #ReadOnly
    );

    totalAmount @UI.DataPoint : {

        Title : 'Total Amount'
    };

    status @UI.Criticality : criticality;
};

annotate service.POItems with @(

    UI.HeaderInfo : {

        TypeName       : 'PO Item',

        TypeNamePlural : 'PO Items',

        Title : {
            Value : product.name
        }
    },

    UI.LineItem : [

        {
            Value : product.name,
            Label : 'Product'
        },

        {
            Value : quantity,
            Label : 'Quantity'
        },

        {
            Value : unitPrice,
            Label : 'Unit Price'
        },

        {
            Value : amount,
            Label : 'Amount'
        }
    ],

    UI.FieldGroup #ItemInfo : {

        $Type : 'UI.FieldGroupType',

        Label : 'Item Information',

        Data : [

            {
                Value : product.name,
                Label : 'Product'
            },

            {
                Value : quantity,
                Label : 'Quantity'
            },

            {
                Value : unitPrice,
                Label : 'Unit Price'
            },

            {
                Value : amount,
                Label : 'Amount'
            }
        ]
    },

    UI.Facets : [

        {
            $Type  : 'UI.ReferenceFacet',

            ID     : 'ItemInfoSection',

            Label  : 'Item Details',

            Target : '@UI.FieldGroup#ItemInfo'
        }
    ],

    Common.SideEffects #Recalc : {

        SourceProperties : ['quantity'],

        TargetProperties : ['amount']
    }

) {

    product @Common.ValueList : {

        CollectionPath : 'Products',

        Parameters : [

            {
                $Type : 'Common.ValueListParameterInOut',

                LocalDataProperty : product_ID,

                ValueListProperty : 'ID'
            },

            {
                $Type : 'Common.ValueListParameterDisplayOnly',

                ValueListProperty : 'name'
            }
        ]
    };
};

