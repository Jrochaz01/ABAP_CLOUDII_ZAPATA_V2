@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Incidentes Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZINCT_I_JRZ
  provider contract transactional_interface
  as projection on ZINCT_R_JRZ
{
  key incuuid,
      incidentid,
      title,
      description,
      status,
      priority,
      creationdate,
      changedate,
      localcreatedby,
      localcreatedat,
      locallastchangedby,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      locallastchangedat,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat,
      /* Associations */
      _Priority,
      _Status
}
