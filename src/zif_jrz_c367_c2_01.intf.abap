INTERFACE zif_jrz_c367_c2_01
  PUBLIC .
  INTERFACES: zif_jrz_c367_c2_03.
  CLASS-DATA: comp_id TYPE string.
  DATA conn_id  TYPE string.
  METHODS:
    set_conn_id   IMPORTING iv_connid TYPE string,
    get_conn_id   RETURNING VALUE(rv_conn_id) TYPE string.

ENDINTERFACE.
