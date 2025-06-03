@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root-Sales Order Items'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_R_SOI_6582 as select from zsoi_6582
association to parent Z_R_SOH_6582 as __HEADER 
    on $projection.Id = __HEADER.Id
{
    key id as Id,
    key pos as Pos,
    name as Name,
    description as Description,
    releasedate as Releasedate,
    discontinuedate as Discontinuedate,
    price as Price,
  @Semantics.quantity.unitOfMeasure: 'Unit'
    height as Height,
  @Semantics.quantity.unitOfMeasure: 'UniT'
    width as Width,
    unit_field as Unit,
    depth as Depth,
    quantity as Quantity,
    @Semantics.user.createdBy: true
     createdby     as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      createdat     as CreatedAt,
      @Semantics.user.lastChangedBy: true
      lastchangedby as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat as LastChangedAt,
    __HEADER // Make association public
}
