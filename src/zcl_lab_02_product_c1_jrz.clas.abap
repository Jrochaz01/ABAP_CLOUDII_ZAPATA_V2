*Laboratorio C1: 2. Creación de clases
CLASS zcl_lab_02_product_c1_jrz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_product IMPORTING iv_product TYPE matnr
                                   iv_creation_date TYPE zdate,
             set_crationdate IMPORTING iv_product TYPE matnr
                                   iv_creation_date TYPE zdate.


  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: product       TYPE matnr,
          creation_date TYPE zdate.
ENDCLASS.



CLASS zcl_lab_02_product_c1_jrz IMPLEMENTATION.
  METHOD set_crationdate.

  ENDMETHOD.

  METHOD set_product.

  ENDMETHOD.

ENDCLASS.
