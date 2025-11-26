@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Incidentes Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZINCT_I_JRZ
  provider contract transactional_interface
  as projection on ZINCT_R_JRZ
{
  key IncUuid,
      IncidentId,
      Title,
      Description,
      Status,
      Priority,
      Creationdate,
      Changedate,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _Status,
      _Priority      
}
