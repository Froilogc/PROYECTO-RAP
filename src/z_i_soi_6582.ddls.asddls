@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface -  Sales Order  Item'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_I_SOI_6582 as projection on Z_R_SOI_6582
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
    __HEADER : redirected to parent Z_I_SOH_6582
}
