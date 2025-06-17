CLASS zcl_jrz_c367_c1_03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA: log TYPE string.
    METHODS:
      constructor.
    CLASS-METHODS:
      class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jrz_c367_c1_03 IMPLEMENTATION.
  METHOD class_constructor.
    log = |Static constructor----->{ log }|.
  ENDMETHOD.

  METHOD constructor.
    log = |Instance constructor----->{ log }|.
  ENDMETHOD.

ENDCLASS.
