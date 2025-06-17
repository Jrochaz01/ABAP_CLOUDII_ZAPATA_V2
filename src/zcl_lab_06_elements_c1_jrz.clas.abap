*  " Laboratorio C1: 7. Utilizar tipos de datos en clases
CLASS zcl_lab_06_elements_c1_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.
    DATA: ms_object TYPE ty_elem_objects.

    " Laboratorio C1: 8. Constantes en clases
    CONSTANTS: c_data1 TYPE string VALUE 'const 1',
               c_data2 TYPE string VALUE 'const 2',
               c_data3 TYPE string VALUE 'const 3',
               c_data4 TYPE string VALUE 'const 4'.

    METHODS: set_object IMPORTING is_elem_object TYPE ty_elem_objects,
      get_object RETURNING VALUE(rs_elem_object) TYPE ty_elem_objects.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_06_elements_c1_jrz IMPLEMENTATION.
  METHOD set_object.
    me->ms_object = is_elem_object.
  ENDMETHOD.

  METHOD get_object.
    rs_elem_object = me->ms_object.
    RETURN.
  ENDMETHOD.

ENDCLASS.
