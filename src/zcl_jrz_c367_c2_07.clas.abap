CLASS zcl_jrz_c367_c2_07 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODs: get_capital returning value(rv_capital) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jrz_c367_c2_07 IMPLEMENTATION.
  METHOD get_capital.
    DATA(lo_friend) = new zcl_jrz_c367_c2_06(  ).
    lo_friend->capital = 'Capital Friend'.

    rv_capital = lo_friend->capital.
  ENDMETHOD.

ENDCLASS.
