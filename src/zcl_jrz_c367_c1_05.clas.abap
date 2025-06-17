CLASS zcl_jrz_c367_c1_05 DEFINITION INHERITING FROM zcl_jrz_c367_c1_04
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: attr TYPE string.
    METHODS:
      constructor,
      set_arch.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_jrz_c367_c1_05 IMPLEMENTATION.
  METHOD set_arch.
    me->architecture = '05 - My architecture'.
  ENDMETHOD.

  METHOD constructor.
*    attr = 'valor'.    " Genera error.


    super->constructor( ).

    attr = 'valor'.    " No genera error.
  ENDMETHOD.

ENDCLASS.
