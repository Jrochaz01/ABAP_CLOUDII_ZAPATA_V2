CLASS zcl_jrz_c367_exec_log_c1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jrz_c367_exec_log_c1 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*   Hola Mundo ----------------------
    out->write( 'Hola Mundo ----------------------' ).
    out->write( 'Hola Mundo' ).
    out->write( ' ' ).




*   Class Instance ------------------
    out->write( 'Class Instance ------------------' ).
    DATA(lo_instance) = NEW zcl_jrz_c367_c1_01(  ).
    lo_instance->set_attr_i( 'Attribute 1' ).
    lo_instance->get_attr_i(
      IMPORTING
        ev_attr = DATA(lv_attribute_i)
    ).
    out->write( lv_attribute_i ).
    out->write( ' ' ).


*   Acceso to static Component ------
    out->write( 'Acceso to static Component ------' ).
    zcl_jrz_c367_c1_01=>set_attr_s( 'Attribute 2' ).
    zcl_jrz_c367_c1_01=>get_attr_s(
      IMPORTING
        ev_attr = DATA(lv_attribute_s)
    ).
    out->write( lv_attribute_s ).
    out->write( ' ' ).


*   With Optional parameter can validate with the Supplied Command 1 --------
    out->write( 'With Optional parameter can validate with the Supplied Command 1------' ).
    IF lo_instance->get_flights( '00000003' ) = abap_true.
      out->write( 'The flight exists' ).
    ELSE.
      out->write( 'The flight doesnt exists' ).
    ENDIF.
    out->write( ' ' ).

    " With Optional parameter can validate with the Supplied Command 2 ---------
    out->write( 'With Optional parameter can validate with the Supplied Command 2 ---------' ).
    IF lo_instance->get_flights( EXPORTING iv_flight = '00000003'
                                           iv_agency = '052'    ) = abap_true.
      out->write( 'The flight exists' ).
    ELSE.
      out->write( 'The flight doesnt exists' ).
    ENDIF.
    out->write( ' ' ).

*   Constructor (zcl_jrz_c367_c1_03) Instances -----------
    out->write( 'Constructor (zcl_jrz_c367_c1_03) Instances -----------' ).
    out->write( zcl_jrz_c367_c1_03=>log ).
    data(lo_constructor) = new zcl_jrz_c367_c1_03( ).
    out->write( zcl_jrz_c367_c1_03=>log ).
    data(lo_constructor2) = new zcl_jrz_c367_c1_03( ).
    out->write( zcl_jrz_c367_c1_03=>log ).
    data(lo_constructor3) = new zcl_jrz_c367_c1_03( ).
    out->write( zcl_jrz_c367_c1_03=>log ).
    out->write( ' ' ).


*   Heritance (zcl_jrz_c367_c1_04 / 05) -----------
    out->write( 'Heritance (zcl_jrz_c367_c1_04 / 05) -----------' ).
    data(lo_heritance)  = new zcl_jrz_c367_c1_05( ).
    out->write( lo_heritance->get_arch(  ) ).
*    lo_heritance->architecture = '64 bits'.
    out->write( lo_heritance->get_arch(  ) ).
    lo_heritance->set_arch(  ).
    out->write( lo_heritance->get_arch(  ) ).
    out->write( ' ' ).


  ENDMETHOD.

ENDCLASS.
