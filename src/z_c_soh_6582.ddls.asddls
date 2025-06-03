@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption- Sales  Order Header'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_C_SOH_6582
  provider contract transactional_query as projection on Z_R_SOH_6582
{
    key Id,
    Email,
    Firstname,
    Lastname,
    Country,
    Creation,
    Deliverydate,
    Orderstatus,
    Imageurl,
    /* Associations */
    _Item : redirected to composition child Z_C_SOI_6582
}
