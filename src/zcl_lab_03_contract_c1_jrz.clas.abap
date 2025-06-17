*Laboratorio C1 : 3. Encapsulación
CLASS zcl_lab_03_contract_c1_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: cntr_type(2) TYPE c.
    METHODS: set_creation_date IMPORTING iv_creation_date TYPE zdate.
  PROTECTED SECTION.
    DATA: creation_date TYPE zdate.
  PRIVATE SECTION.
    DATA: client TYPE string.
ENDCLASS.



CLASS zcl_lab_03_contract_c1_jrz IMPLEMENTATION.
  METHOD set_creation_date.
    me->creation_date = iv_creation_date.
  ENDMETHOD.

ENDCLASS.
