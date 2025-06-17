*  " Laboratorio C1: 9. READ-ONLY Restringir Acceso Escritura
CLASS zcl_lab_07_student_c1_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: birth_date TYPE zdate VALUE '19820113' READ-ONLY.
    METHODS: set_birth_date IMPORTING iv_birth_date TYPE zdate,
      get_birth_date RETURNING VALUE(rv_birth_date) TYPE zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_07_student_c1_jrz IMPLEMENTATION.
  METHOD set_birth_date.
    me->birth_date = iv_birth_date.
  ENDMETHOD.

  METHOD get_birth_date.
    rv_birth_date = me->birth_date.
    RETURN.
  ENDMETHOD.

ENDCLASS.
