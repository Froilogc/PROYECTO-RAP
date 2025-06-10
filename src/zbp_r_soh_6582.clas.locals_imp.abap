CLASS lhc__SalesOrder DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR _SalesOrder RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR _SalesOrder RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR _SalesOrder RESULT result.

*    METHODS earlynumbering_create FOR NUMBERING
*      IMPORTING entities FOR CREATE _SalesOrder.



*    METHODS earlynumbering_cba_Item FOR NUMBERING
*      IMPORTING entities FOR CREATE _SalesOrder\_Item.

    METHODS AcceptOrder FOR MODIFY
      IMPORTING keys FOR ACTION _SalesOrder~AcceptOrder RESULT result.

    METHODS cretateSalesOrdeByTemple FOR MODIFY
      IMPORTING keys FOR ACTION _SalesOrder~cretateSalesOrdeByTemple RESULT result.

    METHODS FinishtOrder FOR MODIFY
      IMPORTING keys FOR ACTION _SalesOrder~FinishtOrder RESULT result.

    METHODS RejecttOrder FOR MODIFY
      IMPORTING keys FOR ACTION _SalesOrder~RejecttOrder RESULT result.

    METHODS SetStatus FOR DETERMINE ON MODIFY
      IMPORTING keys FOR _SalesOrder~SetStatus.

    METHODS validateEmail FOR VALIDATE ON SAVE
      IMPORTING keys FOR _SalesOrder~validateEmail.

ENDCLASS.

CLASS lhc__SalesOrder IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

*  METHOD earlynumbering_create.
*
*    DATA(lt_entities) = entities.
*
*
*    DELETE lt_entities WHERE Id IS NOT INITIAL.
*
*    SELECT SINGLE FROM zsoh_6582
*            FIELDS MAX( id )
*            INTO @DATA(LV_OrderId).
*
*
*    LV_OrderId = LV_OrderId + 1.
*
*
**    APPEND VALUE #(  %cid = lt_entities[ 1 ]-%cid
**    Id = LV_OrderId  ) TO mapped-_salesorder.
*
*
*    LOOP AT entities ASSIGNING FIELD-SYMBOL(<ls_entity>).
*      INSERT VALUE #( %cid            = <ls_entity>-%cid
*                      id  = LV_OrderId  ) INTO TABLE mapped-_salesorder.
*    ENDLOOP.
*
*
*
*
*  ENDMETHOD.
*
*
*  METHOD earlynumbering_cba_Item.
*
*    DATA(lt_entities) = entities.
*
*    DELETE lt_entities WHERE Id IS NOT INITIAL.
*
**
*    SELECT SINGLE FROM zsoi_6582
*            FIELDS MAX( pos )
*            INTO @DATA(LV_pos).
**
**
*    LV_pos = LV_pos + 1.
**
*    mapped-salesorderitem = VALUE #( ( %cid = lt_entities[ 1 ]-%cid_ref
*                    id = lt_entities[ 1 ]-id
*                    Pos = lv_pos ) ).
**
**                             append VALUE #(  %cid = lt_entities[ 1 ]-%cid
**                             Pos = LV_OrderId  ) to mapped-salesorderitem.
*  ENDMETHOD.

  METHOD AcceptOrder.
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


    DATA lv_id_s TYPE int4.

    lv_id_s = lv_id.


    "LV_ID_S = TO_STRING (lv_id , '00').
    lt_create_salesorder = VALUE #( FOR create_row IN lt_entity_SalesOrder INDEX INTO idx

    ( %cid =  lv_id + idx
    Id =   lv_id_s + idx
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

  METHOD FinishtOrder.
  ENDMETHOD.

  METHOD RejecttOrder.
  ENDMETHOD.

  METHOD SetStatus.
  ENDMETHOD.

  METHOD validateEmail.
  ENDMETHOD.

ENDCLASS.
