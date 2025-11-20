@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Incidentes Consumption Entity'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true


define root view entity ZINCT_C_JRZ
provider contract transactional_query
as projection on ZINCT_R_JRZ
{
    key incuuid,
    incidentid,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @Search.ranking: #MEDIUM    
    title,
    description,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @Search.ranking: #MEDIUM
    @ObjectModel.text.element: [ 'StatusDescription' ]
    status,
    _Status.status_description as StatusDescription,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @Search.ranking: #MEDIUM
    @ObjectModel.text.element: [ 'PriorityDescription' ]    
    priority,
    _Priority.priority_description as PriorityDescription,
    creationdate,
    changedate,
    
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat,
    @Semantics.systemDateTime.lastChangedAt: true
    lastchangedat,
    
    /* Associations */
    _Priority,
    _Status
}
