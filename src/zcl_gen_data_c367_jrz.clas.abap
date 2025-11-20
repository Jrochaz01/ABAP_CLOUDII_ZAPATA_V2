CLASS zcl_gen_data_c367_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  interfaces:   if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_gen_data_c367_jrz IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DELETE FROM zdt_inct_h_jrz.
    DELETE FROM zdt_inct_jrz.
  ENDMETHOD.

ENDCLASS.
