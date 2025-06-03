@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root- Sales Order'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_R_SOH_6582
  as select from zsoh_6582
  composition [0..*] of Z_R_SOI_6582 as _Item
{
  key id            as Id,
      email         as Email,
      firstname     as Firstname,
      lastname      as Lastname,
      country       as Country,
      creation      as Creation,
      deliverydate  as Deliverydate,
      orderstatus   as Orderstatus,
      imageurl      as Imageurl,
      @Semantics.user.createdBy: true
      createdby     as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      createdat     as CreatedAt,
      @Semantics.user.lastChangedBy: true
      lastchangedby as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat as LastChangedAt,
      _Item
}
