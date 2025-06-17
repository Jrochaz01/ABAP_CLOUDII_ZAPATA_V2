CLASS zcl_jrz_c367_c1_02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_attr_i IMPORTING my_attr TYPE string,
      get_attr_i RETURNING VALUE(my_attr) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: my_attr TYPE string.
ENDCLASS.



CLASS zcl_jrz_c367_c1_02 IMPLEMENTATION.
  METHOD get_attr_i.
    my_attr = me->my_attr.
  ENDMETHOD.

  METHOD set_attr_i.
    me->my_attr = my_attr.
  ENDMETHOD.

ENDCLASS.
