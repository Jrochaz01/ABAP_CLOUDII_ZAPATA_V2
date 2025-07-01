CLASS zcl_jrz_c367_c2_09 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_jrz_c367_c2_01,
      zif_jrz_c367_c2_02.
    ALIASES:  get_conn_id for zif_jrz_c367_c2_01~get_conn_id,
              get_customer for zif_jrz_c367_c2_02~get_customer,
              get_airports for zif_jrz_c367_c2_03~get_airports.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jrz_c367_c2_09 IMPLEMENTATION.
  METHOD get_conn_id.
    rv_conn_id = me->zif_jrz_c367_c2_01~conn_id.
  ENDMETHOD.

  METHOD zif_jrz_c367_c2_01~set_conn_id.
    " Instancia
    me->zif_jrz_c367_c2_01~conn_id = iv_connid.
    " Estatico
    zif_jrz_c367_c2_01~comp_id = 'Airline ID'.
  ENDMETHOD.

  METHOD get_customer.
    SELECT SINGLE FROM /dmo/customer
    FIELDS first_name,
           last_name
    WHERE customer_id = @iv_cust_id
    INTO @rs_cust_address.
  ENDMETHOD.

  METHOD get_airports.
    SELECT SINGLE FROM /dmo/airport
    FIELDS *
    WHERE airport_id = @iv_airport_id
    INTO @rs_airport.
  ENDMETHOD.

ENDCLASS.
