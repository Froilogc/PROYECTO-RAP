CLASS lhc__SalesOrder DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR _SalesOrder RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR _SalesOrder RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR _SalesOrder RESULT result.

    METHODS precheck_create FOR PRECHECK
      IMPORTING entities FOR CREATE _SalesOrder.

    METHODS AcceptOrder FOR MODIFY
      IMPORTING keys FOR ACTION _SalesOrder~AcceptOrder RESULT result.

    METHODS FinishtOrder FOR MODIFY
      IMPORTING keys FOR ACTION _SalesOrder~FinishtOrder RESULT result.

    METHODS RejecttOrder FOR MODIFY
      IMPORTING keys FOR ACTION _SalesOrder~RejecttOrder RESULT result.

    METHODS SetStatus FOR DETERMINE ON MODIFY
      IMPORTING keys FOR _SalesOrder~SetStatus.

    METHODS validateEmail FOR VALIDATE ON SAVE
      IMPORTING keys FOR _SalesOrder~validateEmail.
    METHODS cretateSalesOrdeByTemple FOR MODIFY
      IMPORTING keys FOR ACTION _SalesOrder~cretateSalesOrdeByTemple RESULT result.

ENDCLASS.

CLASS lhc__SalesOrder IMPLEMENTATION.

  METHOD get_instance_features.
    READ ENTITIES OF z_r_soh_6582 IN LOCAL MODE
    ENTITY _SalesOrder
    FIELDS ( Id Orderstatus )
    WITH VALUE #( FOR row_key IN keys (  %key = row_key-%key ) )
    RESULT DATA(lt_entity_SalesOrder).

   result = VALUE #( for ls_salesorder in lt_entity_SalesOrder ( %key = ls_salesorder-%key
   %field-Id = if_abap_behv=>fc-f-read_only ) ).

  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD precheck_create.
  ENDMETHOD.

  METHOD AcceptOrder.
  ENDMETHOD.

  METHOD FinishtOrder.
  ENDMETHOD.

  METHOD RejecttOrder.
  ENDMETHOD.

  METHOD SetStatus.
  ENDMETHOD.

  METHOD validateEmail.

  ENDMETHOD.

  METHOD cretateSalesOrdeByTemple.


    READ ENTITIES OF z_r_soh_6582 IN LOCAL MODE
    ENTITY _SalesOrder
    FIELDS ( Id Country Creation Deliverydate Email Firstname Imageurl Lastname )
    WITH VALUE #( FOR row_key IN keys (  %key = row_key-%key ) )
    RESULT DATA(lt_entity_SalesOrder)
    FAILED failed
    REPORTED reported.

    DATA lt_create_salesorder TYPE TABLE FOR CREATE z_r_soh_6582\\_SalesOrder.

    SELECT MAX( id ) FROM zsoh_6582
     INTO @DATA(lv_id).
    DATA(lv_today) = cl_abap_context_info=>get_system_date(  ).


DATA LV_ID_S TYPE int4.

LV_ID_S = lv_id.


   "LV_ID_S = TO_STRING (lv_id , '00').
    lt_create_salesorder = VALUE #( FOR create_row IN lt_entity_SalesOrder INDEX INTO idx

    ( %cid =  lv_id + idx
    Id =   LV_ID_S + idx
    Country = create_row-Country
    Creation = lv_today
    Deliverydate = create_row-Deliverydate
    Email = create_row-Email
    Firstname = create_row-Firstname
    Lastname = create_row-Lastname
    Imageurl = create_row-Imageurl
    Orderstatus = 1
     ) ).

    MODIFY ENTITIES OF z_r_soh_6582
    IN LOCAL MODE ENTITY _SalesOrder
    CREATE FIELDS (
         Id
        Email
        Firstname
        Lastname
        Country
        Creation
        Deliverydate
        Orderstatus
        Imageurl

     )

    WITH lt_create_salesorder
    MAPPED mapped
    FAILED failed
    REPORTED reported.

    result = VALUE #( FOR result_row IN lt_create_salesorder
    INDEX INTO idx
    (
    %key = keys[ idx ]-%key
    %param = CORRESPONDING #(
    result_row ) ) ).





  ENDMETHOD.

ENDCLASS.
