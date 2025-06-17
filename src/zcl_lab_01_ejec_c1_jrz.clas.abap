*Laboratorio C1: 1. Clase de ejecución
CLASS zcl_lab_01_ejec_c1_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: lv_code  TYPE /dmo/carrier_id,
          lv_conn  TYPE /dmo/connection_id,
          lv_data  TYPE zcl_lab_06_elements_c1_jrz=>ty_elem_objects,
          lv_datar TYPE zcl_lab_06_elements_c1_jrz=>ty_elem_objects.


ENDCLASS.



CLASS zcl_lab_01_ejec_c1_jrz IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Laboratorio C1: 5. Métodos de instancia y métodos estáticos
    DATA: lo_04_person TYPE REF TO zcl_lab_04_person_c1_jrz.

    lo_04_person = NEW #( ).
    lo_04_person->set_age( 43 ).

    out->write( lo_04_person->get_age( ) ).

    " Laboratorio C1: 6. Métodos funcionales
    DATA: lo_05_flights TYPE REF TO zcl_lab_05_flight_c1_jrz.

    me->lv_code = 'LH'.

    lo_05_flights = NEW #( ).
    DATA(lv_result) = lo_05_flights->val_flight( EXPORTING iv_code = me->lv_code
                                                           iv_conn = me->lv_conn ).

    out->write( lv_result ).

    " Laboratorio C1: 7. Utilizar tipos de datos en clases
    DATA: lo_06_elements TYPE REF TO zcl_lab_06_elements_c1_jrz.

    me->lv_data-class        = 'zcl_lab_06_elements_c1_jrz'.
    me->lv_data-instance     = 'Instance: 1'.
    me->lv_data-reference    = 'reference 1'.

    lo_06_elements = NEW #( ).

    lo_06_elements->set_object( lv_data ).
    out->write( lo_06_elements->get_object( ) ).


    " Laboratorio C1: 8. Constantes en clases
    out->write( lo_06_elements->c_data1 ).
    out->write( lo_06_elements->c_data2 ).
    out->write( lo_06_elements->c_data3 ).
    out->write( lo_06_elements->c_data4 ).

    " Laboratorio C1: 9. READ-ONLY Restringir Acceso Escritura
    DATA: lo_07_student TYPE REF TO zcl_lab_07_student_c1_jrz.

    lo_07_student = NEW #( ).
    lo_07_student->set_birth_date( '20251606' ).
    out->write( lo_07_student->get_birth_date( ) ).
    "    lo_07_student->birth_date = '19820202'.  " Genera error al compilar
    out->write( lo_07_student->get_birth_date( ) ).

*  " Laboratorio C1: 10. Parámetro opcional
    zcl_lab_08_work_record_c1_jrz=>open_new_record( EXPORTING iv_date = '19820113'
                                                              iv_first_name = 'Jonathan'
                                                              iv_last_name  = 'Rocha'
"                                                              iv_surname    = 'Rocha'
                                                              ).

    " Laboratorio C1: 11. Autorreferencia
    DATA(lo_09_account) = NEW zcl_lab_09_account_c1_jrz(  ).
    DATA: lv_iban   TYPE string.

    lo_09_account->set( 'VALOR1' ).
    lo_09_account->get( IMPORTING iban = lv_iban ).
    out->write( lv_iban ).

  ENDMETHOD.

ENDCLASS.
