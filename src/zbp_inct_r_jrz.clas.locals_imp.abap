CLASS lhc_Incident DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Incident RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Incident RESULT result.

    METHODS acceptIncident FOR MODIFY
      IMPORTING keys FOR ACTION Incident~acceptIncident RESULT result.

    METHODS change_status_priority FOR MODIFY
      IMPORTING keys FOR ACTION Incident~change_status_priority.

    METHODS deductIncident FOR MODIFY
      IMPORTING keys FOR ACTION Incident~deductIncident RESULT result.

    METHODS rejectIncident FOR MODIFY
      IMPORTING keys FOR ACTION Incident~rejectIncident RESULT result.

    METHODS setChangeDate FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Incident~setChangeDate.

    METHODS setCreationDate FOR DETERMINE ON SAVE
      IMPORTING keys FOR Incident~setCreationDate.

    METHODS setIncNumber FOR DETERMINE ON SAVE
      IMPORTING keys FOR Incident~setIncNumber.

    METHODS validate_priority FOR VALIDATE ON SAVE
      IMPORTING keys FOR Incident~validate_priority.

    METHODS validate_status FOR VALIDATE ON SAVE
      IMPORTING keys FOR Incident~validate_status.

ENDCLASS.

CLASS lhc_Incident IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD acceptIncident.
  ENDMETHOD.

  METHOD change_status_priority.
  ENDMETHOD.

  METHOD deductIncident.
  ENDMETHOD.

  METHOD rejectIncident.
  ENDMETHOD.

  METHOD setChangeDate.
  ENDMETHOD.

  METHOD setCreationDate.
  ENDMETHOD.

  METHOD setIncNumber.
  ENDMETHOD.

  METHOD validate_priority.
  ENDMETHOD.

  METHOD validate_status.
  ENDMETHOD.

ENDCLASS.
