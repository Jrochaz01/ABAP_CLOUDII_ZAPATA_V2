@EndUserText.label: 'Incident Abstract Entity'
define abstract entity ZINCT_AE_JRZ
{
  @EndUserText.label: 'Change Status'
  @Consumption.valueHelpDefinition: [ {
      entity.name: 'zdd_status_vh_jrz',
      entity.element: 'StatusCode',
      useForValidation: true
    } ]
  status : zde_status2_jrz;
  @EndUserText.label: 'Add Observation Text'
  text   : zde_text_jrz;
}
