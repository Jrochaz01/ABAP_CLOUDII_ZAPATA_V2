@Metadata.allowExtensions: true
@EndUserText.label: 'Consumption view Incident'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity zc_dt_inct_jrz
  provider contract transactional_query
  as projection on zr_dt_inct_jrz
{
  key IncUuid, 
      IncidentID,
      Title,
      Description,
      Status,
      Priority,
      CreationDate,
      ChangeDate,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,

      /* Associations */
      _History : redirected to composition child zc_dt_inct_h_jrz
}
