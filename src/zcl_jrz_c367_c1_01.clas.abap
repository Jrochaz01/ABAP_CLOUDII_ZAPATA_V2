CLASS zcl_jrz_c367_c1_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.   " Todos los componentes pueden ser vistos/usados desde sistema
    " Instancia:
    DATA: my_attr TYPE string.
    METHODS: set_attr_i IMPORTING iv_attr TYPE string.

    " Estatico
    CLASS-DATA: my_attr2 TYPE string.
    CLASS-METHODS: set_attr_s IMPORTING iv_attr type string.

  PROTECTED SECTION." Todos los componentes pueden ser vistos desde esta clase y sus hijos
  PRIVATE SECTION.  " Todos los componentes pueden ser solo vistos por esta clase y las clases AMIGAS.

ENDCLASS.



CLASS zcl_jrz_c367_c1_01 IMPLEMENTATION.
  METHOD set_attr_i.

  ENDMETHOD.

  METHOD set_attr_s.

  ENDMETHOD.

ENDCLASS.
