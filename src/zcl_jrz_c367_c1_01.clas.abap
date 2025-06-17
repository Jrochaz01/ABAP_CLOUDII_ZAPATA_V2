CLASS zcl_jrz_c367_c1_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.   " Todos los componentes pueden ser vistos/usados desde sistema

    TYPES: char TYPE c LENGTH 1.

    " Instancia:
    METHODS:
      set_attr_i IMPORTING iv_attr TYPE string,
      get_attr_i EXPORTING ev_attr TYPE string,
      get_flights IMPORTING iv_flight        TYPE /dmo/travel_id
                            iv_agency        TYPE /dmo/agency_id OPTIONAL
                  RETURNING VALUE(rv_exists) TYPE char.

    " Estatico
    CLASS-METHODS:
      set_attr_s IMPORTING iv_attr TYPE string,
      get_attr_s EXPORTING ev_attr TYPE string.

  PROTECTED SECTION." Todos los componentes pueden ser vistos desde esta clase y sus hijos
  PRIVATE SECTION.  " Todos los componentes pueden ser solo vistos por esta clase y las clases AMIGAS.
    " Instancia:
    DATA: my_attr_i TYPE string.
    " Estatico
    CLASS-DATA: my_attr_s TYPE string.
ENDCLASS.



CLASS zcl_jrz_c367_c1_01 IMPLEMENTATION.
  METHOD set_attr_i.
    my_attr_i = iv_attr.
  ENDMETHOD.

  METHOD set_attr_s.
    my_attr_s = iv_attr.
  ENDMETHOD.

  METHOD get_attr_i.
    ev_attr = my_attr_i.
  ENDMETHOD.

  METHOD get_attr_s.
    ev_attr = my_attr_s.
  ENDMETHOD.

  METHOD get_flights.
    IF iv_agency IS NOT SUPPLIED.
      SELECT SINGLE FROM /dmo/travel
      FIELDS *
      WHERE travel_id = @iv_flight
      INTO @DATA(ls_travel).

      rv_exists = COND #( WHEN sy-subrc = 0
                              THEN abap_true
                          ELSE abap_false ).
    ELSE.
      rv_exists = abap_false.
    ENDIF.



  ENDMETHOD.

ENDCLASS.
