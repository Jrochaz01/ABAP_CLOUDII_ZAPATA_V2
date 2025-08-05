CLASS zcl_jrz__dummy DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.
    DATA: val_a TYPE string.

    METHODS: mtd_set_val    IMPORTING VALUE(a) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jrz__dummy IMPLEMENTATION.


  METHOD mtd_set_val.
    me->val_a = a.
  ENDMETHOD.

ENDCLASS.
