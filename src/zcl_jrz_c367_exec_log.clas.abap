CLASS zcl_jrz_c367_exec_log DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jrz_c367_exec_log IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Hola mundo' ).
  ENDMETHOD.

ENDCLASS.
