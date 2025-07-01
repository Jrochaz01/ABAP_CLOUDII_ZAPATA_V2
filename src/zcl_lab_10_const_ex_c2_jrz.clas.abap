CLASS zcl_lab_10_const_ex_c2_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_const_ex_c2_jrz IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(lo_lab10) = NEW zcl_lab_10_constructor_c2_jrz(  ).
    out->write( zcl_lab_10_constructor_c2_jrz=>log ).
    DATA(lo_lab10_2) = NEW zcl_lab_10_constructor_c2_jrz(  ).
    out->write( zcl_lab_10_constructor_c2_jrz=>log ).



  ENDMETHOD.

ENDCLASS.
