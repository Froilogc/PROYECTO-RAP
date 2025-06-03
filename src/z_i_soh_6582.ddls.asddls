@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface -  Sales Order Header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_SOH_6582
  provider contract transactional_interface as projection on Z_R_SOH_6582
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
    _Item : redirected to composition child Z_I_SOI_6582
}
