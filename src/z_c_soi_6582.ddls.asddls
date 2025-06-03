@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption- Sales  Order  Item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity Z_C_SOI_6582 as projection on Z_R_SOI_6582
{
    key Id,
    key Pos,
    Name,
    Description,
    Releasedate,
    Discontinuedate,
    Price,
    @Semantics.quantity.unitOfMeasure: 'Unit'
    Height,
     @Semantics.quantity.unitOfMeasure: 'Unit'
    Width,
    Unit,
    Depth,
    Quantity,
    /* Associations */
    __HEADER : redirected to parent Z_C_SOH_6582
}
