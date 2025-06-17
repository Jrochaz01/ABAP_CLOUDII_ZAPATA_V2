*  " Laboratorio C1: 6. Métodos funcionales
CLASS zcl_lab_05_flight_c1_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: val_flight IMPORTING iv_code type /dmo/carrier_id
                                  iv_conn type /dmo/connection_id
                        RETURNING VALUE(rv_exists) TYPE abap_boolean.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_05_flight_c1_jrz IMPLEMENTATION.
  METHOD val_flight.
    CLEAR rv_exists.
    SELECT SINGLE FROM /DMO/FLIGHT
    FIELDS carrier_id, connection_id
    WHERE carrier_id = @iv_code AND
          connection_id = @iv_conn
    INTO @DATA(ls_dmo_flights).


    rv_exists = COND #( WHEN sy-subrc = 0
                            THEN abap_on
                        ELSE abap_off ).
    RETURN.

  ENDMETHOD.

ENDCLASS.
