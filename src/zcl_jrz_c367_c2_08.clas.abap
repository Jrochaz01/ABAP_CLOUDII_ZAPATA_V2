CLASS zcl_jrz_c367_c2_08 DEFINITION INHERITING FROM zcl_jrz_c367_c2_07
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_private RETURNING VALUE(rv_attribute) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jrz_c367_c2_08 IMPLEMENTATION.
  METHOD get_private.

    data(lo_inst) = new zcl_jrz_c367_c2_06(  ).
    lo_inst->capital = 'CapitalHeritance'.
    rv_attribute = lo_inst->capital.

  ENDMETHOD.

ENDCLASS.
