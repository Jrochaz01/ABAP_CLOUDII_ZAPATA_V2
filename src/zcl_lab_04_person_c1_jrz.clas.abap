*Laboratorio C1 : 5. Métodos de instancia y métodos estáticos
CLASS zcl_lab_04_person_c1_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_age  IMPORTING iv_age TYPE i,
      get_age  RETURNING VALUE(rv_age) TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: age TYPE i.

ENDCLASS.



CLASS zcl_lab_04_person_c1_jrz IMPLEMENTATION.
  METHOD set_age.
    me->age = iv_age.
  ENDMETHOD.

  METHOD get_age.
    rv_age = me->age.
  ENDMETHOD.

ENDCLASS.
