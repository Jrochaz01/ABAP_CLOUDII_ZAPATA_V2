CLASS zcl_incident_messages_jrz DEFINITION
PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_t100_dyn_msg .
    INTERFACES if_t100_message .
    INTERFACES if_abap_behv_message .

    CONSTANTS:
      gc_msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',

      BEGIN OF status_invalid,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '005',
        attr1 TYPE scx_attrname VALUE 'MV_STATUS',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF status_invalid,

      BEGIN OF customer_unkown,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE 'MV_CUSTOMER_ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF customer_unkown,

      BEGIN OF agency_unkown,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '002',
        attr1 TYPE scx_attrname VALUE 'MV_AGENCY_ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF agency_unkown,

      BEGIN OF begin_date_bef_end_date,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE 'MV_BEGIN_DATE',
        attr2 TYPE scx_attrname VALUE 'MV_END_DATE',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF begin_date_bef_end_date,

      BEGIN OF begin_date_on_or_bef_sysdate,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '004',
        attr1 TYPE scx_attrname VALUE 'MV_BEGIN_DATE',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF begin_date_on_or_bef_sysdate,


      BEGIN OF discount_invalid,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '006',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF discount_invalid,

      BEGIN OF enter_begin_date,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '007',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF enter_begin_date,

      BEGIN OF enter_end_date,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '008',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF enter_end_date,

      BEGIN OF enter_agency_id,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '009',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF enter_agency_id,

      BEGIN OF enter_customer_id,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '010',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF enter_customer_id,

      BEGIN OF enter_connection_id,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '011',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF enter_connection_id,

      BEGIN OF no_flight_exists,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '012',
        attr1 TYPE scx_attrname VALUE 'MV_CARRIER_ID',
        attr2 TYPE scx_attrname VALUE 'MV_FLIGHT_DATE',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF no_flight_exists,

      BEGIN OF supplement_unknown,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '013',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF supplement_unknown,

      BEGIN OF enter_supplement_id,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '014',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF enter_supplement_id,

      BEGIN OF enter_airline_id,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '016',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF enter_airline_id,

      BEGIN OF enter_flight_date,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '017',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF enter_flight_date,

      BEGIN OF not_sufficient_numbers,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '018',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF not_sufficient_numbers,

      BEGIN OF number_range_depleted,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '019',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF number_range_depleted,

      BEGIN OF not_authorized,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '020',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF not_authorized,

      BEGIN OF not_authorized_for_agencyID,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '021',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF not_authorized_for_agencyID,

      BEGIN OF currency_required,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '022',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF currency_required,

      BEGIN OF currency_not_existing,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '023',
        attr1 TYPE scx_attrname VALUE 'MV_CURRENCY_CODE',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF currency_not_existing,

      BEGIN OF booking_fee_invalid,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '024',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF booking_fee_invalid,

      BEGIN OF flight_price_invalid,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '025',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF flight_price_invalid,

      BEGIN OF suppl_price_invalid,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '026',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF suppl_price_invalid,

* jrz:.....
      BEGIN OF mandatory_creation_date,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '901',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF mandatory_creation_date,

      BEGIN OF creation_date_uptodate,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '902',
        attr1 TYPE scx_attrname VALUE 'MV_CREATION_DATE',
        attr2 TYPE scx_attrname VALUE 'MV_TODAY_DATE',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF creation_date_uptodate,

      BEGIN OF creation_date_vs_change_date,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '903',
        attr1 TYPE scx_attrname VALUE 'MV_CREATION_DATE',
        attr2 TYPE scx_attrname VALUE 'MV_CHANGE_DATE',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF creation_date_vs_change_date,

      BEGIN OF mandatory_title,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '904',
        attr1 TYPE scx_attrname VALUE 'MV_TITLE',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF mandatory_title,

      BEGIN OF mandatory_description,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '905',
        attr1 TYPE scx_attrname VALUE 'MV_DESCRIPTION',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF mandatory_description,

      BEGIN OF mandatory_priority,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '906',
        attr1 TYPE scx_attrname VALUE 'MV_PRIORITY',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF mandatory_priority,

      BEGIN OF change_status_error,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '908',
        attr1 TYPE scx_attrname VALUE 'MV_STATUS_NEW',
        attr2 TYPE scx_attrname VALUE 'MV_STATUS_OLD',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF change_status_error,

      BEGIN OF user_assigned_error,
        msgid TYPE symsgid VALUE 'ZMC_INCT_MESSAGE_JRZ',
        msgno TYPE symsgno VALUE '909',
        attr1 TYPE scx_attrname VALUE 'MV_USER',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF user_assigned_error.

* jrz:.....


    METHODS constructor
      IMPORTING
        textid                LIKE if_t100_message=>t100key OPTIONAL
        attr1                 TYPE string OPTIONAL
        attr2                 TYPE string OPTIONAL
        attr3                 TYPE string OPTIONAL
        attr4                 TYPE string OPTIONAL
        previous              LIKE previous OPTIONAL
        travel_id             TYPE /dmo/travel_id OPTIONAL
        booking_id            TYPE /dmo/booking_id OPTIONAL
        booking_supplement_id TYPE /dmo/booking_supplement_id OPTIONAL
        agency_id             TYPE /dmo/agency_id OPTIONAL
        customer_id           TYPE /dmo/customer_id OPTIONAL
        carrier_id            TYPE /dmo/carrier-carrier_id OPTIONAL
        connection_id         TYPE /dmo/connection-connection_id OPTIONAL
        supplement_id         TYPE /dmo/supplement-supplement_id OPTIONAL
        begin_date            TYPE /dmo/begin_date OPTIONAL
        end_date              TYPE /dmo/end_date OPTIONAL
* jrz:.....
        creation_date         TYPE /dmo/end_date OPTIONAL
        change_date           TYPE /dmo/end_date OPTIONAL
        today_date            TYPE /dmo/end_date OPTIONAL
        title                 TYPE zde_title_jrz OPTIONAL
        description           TYPE zde_description_jrz OPTIONAL
        priority              TYPE zde_priority_code_jrz OPTIONAL
        status_old            TYPE zde_status2_jrz OPTIONAL
        status_new            TYPE zde_status2_jrz OPTIONAL
        user                  TYPE string OPTIONAL
* jrz:.....
        booking_date          TYPE /dmo/booking_date OPTIONAL
        flight_date           TYPE /dmo/flight_date OPTIONAL
        status                TYPE zde_status2_jrz OPTIONAL
        currency_code         TYPE /dmo/currency_code OPTIONAL
        severity              TYPE if_abap_behv_message=>t_severity OPTIONAL
        uname                 TYPE syuname OPTIONAL.


    DATA:
      mv_attr1                 TYPE string,
      mv_attr2                 TYPE string,
      mv_attr3                 TYPE string,
      mv_attr4                 TYPE string,
      mv_travel_id             TYPE /dmo/travel_id,
      mv_booking_id            TYPE /dmo/booking_id,
      mv_booking_supplement_id TYPE /dmo/booking_supplement_id,
      mv_agency_id             TYPE /dmo/agency_id,
      mv_customer_id           TYPE /dmo/customer_id,
      mv_carrier_id            TYPE /dmo/carrier-carrier_id,
      mv_connection_id         TYPE /dmo/connection-connection_id,
      mv_supplement_id         TYPE /dmo/supplement-supplement_id,
      mv_begin_date            TYPE /dmo/begin_date,
      mv_end_date              TYPE /dmo/end_date,
* jrz:.....
      mv_creation_date         TYPE /dmo/end_date,
      mv_change_date           TYPE /dmo/end_date,
      mv_today_date            TYPE /dmo/end_date,
      mv_title                 TYPE zde_title_jrz,
      mv_description           TYPE zde_description_jrz,
      mv_priority              TYPE zde_priority_code_jrz,
      mv_status_new            TYPE zde_status2_jrz,
      mv_status_old            TYPE zde_status2_jrz,
      mv_user                  TYPE string,
* jrz:.....
      mv_booking_date          TYPE /dmo/booking_date,
      mv_flight_date           TYPE /dmo/flight_date,
      mv_status                TYPE zde_status2_jrz,
      mv_currency_code         TYPE /dmo/currency_code,
      mv_uname                 TYPE syuname.


  PROTECTED SECTION.
  PRIVATE SECTION..
ENDCLASS.



CLASS zcl_incident_messages_jrz IMPLEMENTATION.
  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor(  previous = previous ) .

    me->mv_attr1                 = attr1.
    me->mv_attr2                 = attr2.
    me->mv_attr3                 = attr3.
    me->mv_attr4                 = attr4.
    me->mv_travel_id             = travel_id.
    me->mv_booking_id            = booking_id.
    me->mv_booking_supplement_id = booking_supplement_id.
    me->mv_agency_id             = agency_id.
    me->mv_customer_id           = customer_id.
    me->mv_carrier_id            = carrier_id.
    me->mv_connection_id         = connection_id.
    me->mv_supplement_id         = supplement_id.
    me->mv_begin_date            = begin_date.
    me->mv_end_date              = end_date.
* jrz:.....
    me->mv_creation_date         = creation_date.
    me->mv_change_date           = change_date.
    me->mv_today_date            = today_date.
    me->mv_title                 = title.
    me->mv_description           = description.
    me->mv_priority              = priority.
    me->mv_status_new            = status_new.
    me->mv_status_old            = status_old.
    me->mv_user                  = user.
* jrz:.....
    me->mv_booking_date          = booking_date.
    me->mv_flight_date           = flight_date.
    me->mv_status                = status.
    me->mv_currency_code         = currency_code.
    me->mv_uname                 = uname.


    if_abap_behv_message~m_severity = severity.

    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
