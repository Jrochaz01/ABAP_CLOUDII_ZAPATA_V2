*  " Laboratorio C1: 11. Autorreferencia
CLASS zcl_lab_09_account_c1_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set IMPORTING iban TYPE string,
      get EXPORTING iban TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: iban TYPE string.

ENDCLASS.



CLASS zcl_lab_09_account_c1_jrz IMPLEMENTATION.
  METHOD get.
    iban = me->iban.
  ENDMETHOD.

  METHOD set.
    me->iban = iban.
  ENDMETHOD.

ENDCLASS.
