CLASS zcl_jrz_c367_exec_log_c2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jrz_c367_exec_log_c2 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*   Heritance ----------------------
*   Narrowing cast : Casteo entre instancias. -> UP Cast.
    out->write( 'Heritance ----------------------' ).
    out->write( 'Narrowing cast : Casteo entre instancias. -> UP Cast.-------' ).
    DATA(lo_animal) = NEW zcl_jrz_c367_c2_03_animal( ).
    DATA(lo_lion) = NEW zcl_jrz_c367_c2_04_lion( ).
    DATA(lo_lion2) = NEW zcl_jrz_c367_c2_04_lion( ).

    lo_animal = lo_lion.
    out->write( lo_animal->walk( ) ).

    out->write( 'Widening cast : Casteo entre instancias. -> Down Cast.-------' ).
    " No se puede castear la instancia de la clase padre a una hija sin pasar primero por una UP primero.
    " Si quitas la instruccion "lo_animal = lo_lion" genera error.
    TRY.
        lo_lion2 ?= lo_animal.
        out->write( lo_lion2->walk( ) ).
      CATCH CX_SY_MOVE_CAST_ERROR INTO DATA(lx_cast).
        out->write( lx_cast->get_text(  ) ).
    ENDTRY.

*   Frienship ----------------------
    out->write( 'Frienship cls 07----------------------' ).
    data(lo_friend) = new zcl_jrz_c367_c2_07(  ).
    out->write( lo_friend->get_capital(  ) ).

    out->write( 'Frienship cls 08----------------------' ).
    data(lo_friend2) = new zcl_jrz_c367_c2_08(  ).
    out->write( lo_friend2->get_private(  ) ).

*   Interfaces----------------------
    out->write( 'Interfaces----------------------' ).

    " Con Alias:
    data(lo_interfaces) = new zcl_jrz_c367_c2_09(  ).
    lo_interfaces->get_airports(
      EXPORTING
        iv_airport_id = '00001'
*      RECEIVING
*        rs_airport    =
    ).

    " Sin Alias:
    lo_interfaces->zif_jrz_c367_c2_01~conn_id = '00002'.
    lo_interfaces->zif_jrz_c367_c2_01~set_conn_id( '00001' ).


    endmethod.

ENDCLASS.
