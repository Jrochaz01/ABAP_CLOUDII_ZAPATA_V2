@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Incidentes Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZINCT_R_JRZ
  as select from zdt_inct_jrz
  association [0..1] to zdt_stat_jrz     as _Status   on $projection.status = _Status.status_code
  association [0..1] to zdt_priority_jrz as _Priority on $projection.priority = _Priority.priority_code
{
  key inc_uuid              as incuuid,
      incident_id           as incidentid,
      title                 as title,
      description           as description,
      status                as status,
      priority              as priority,
      creation_date         as creationdate,
      change_date           as changedate,
      @Semantics.user.createdBy: true
      local_created_by      as localcreatedby,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as localcreatedat,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as locallastchangedby,
      //Local ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as locallastchangedat,
      //Total ETag
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as lastchangedat,
      _Status,
      _Priority
}
