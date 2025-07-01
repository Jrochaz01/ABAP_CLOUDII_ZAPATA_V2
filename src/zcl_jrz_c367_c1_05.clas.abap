CLASS zcl_jrz_c367_c1_05 DEFINITION INHERITING FROM zcl_jrz_c367_c1_04
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: attr TYPE string.
    METHODS:
      constructor,
      set_arch,
      get_arch REDEFINITION.        " En REDEFINITION No se pueden agregar parámetros
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

    me->architecture = 'child_architecture'." No genera error.
  ENDMETHOD.

  METHOD get_arch.
    rv_arch = super->get_arch( ).
  ENDMETHOD.

ENDCLASS.
