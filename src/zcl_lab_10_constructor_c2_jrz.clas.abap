CLASS zcl_lab_10_constructor_c2_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    CLASS-DATA: log TYPE string.
    METHODS: constructor.
    CLASS-METHODS: class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_c2_jrz IMPLEMENTATION.
  METHOD constructor.
    log = |Instancia { log }|.
  ENDMETHOD.
  METHOD class_constructor.
    log = |Class constructor { log }|.
  ENDMETHOD.



ENDCLASS.
