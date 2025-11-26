@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Incidentes Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZINCT_R_JRZ
  as select from zdt_inct_jrz
  association [0..1] to zdt_stat_jrz     as _Status   on $projection.Status = _Status.status_code
  association [0..1] to zdt_priority_jrz as _Priority on $projection.Priority = _Priority.priority_code
{
  key inc_uuid              as IncUuid,
      incident_id           as IncidentId,
      title                 as Title,
      description           as Description,
      status                as Status,
      priority              as Priority,
      creation_date         as Creationdate,
      change_date           as Changedate,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      //Local ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      //Total ETag
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      _Status,
      _Priority
}
