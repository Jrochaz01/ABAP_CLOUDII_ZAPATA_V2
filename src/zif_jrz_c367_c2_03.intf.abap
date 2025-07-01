INTERFACE zif_jrz_c367_c2_03
  PUBLIC .
  METHODS: get_airports IMPORTING iv_airport_id     TYPE string
                        RETURNING VALUE(rs_airport) TYPE /dmo/airport.
ENDINTERFACE.
