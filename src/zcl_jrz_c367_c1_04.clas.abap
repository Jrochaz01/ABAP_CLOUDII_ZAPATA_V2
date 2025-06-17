CLASS zcl_jrz_c367_c1_04 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
*    DATA: architecture    TYPE string VALUE '32 bits'.

    METHODS:
      constructor,
      get_arch    RETURNING VALUE(rv_arch) TYPE string.
  PROTECTED SECTION.
    DATA: architecture    TYPE string. "VALUE '32 bits'.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_jrz_c367_c1_04 IMPLEMENTATION.
  METHOD get_arch.
    rv_arch = me->architecture.
  ENDMETHOD.

  METHOD constructor.
    me->architecture = '2 bits'.
  ENDMETHOD.

ENDCLASS.
