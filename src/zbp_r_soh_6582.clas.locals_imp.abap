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

ENDCLASS.

CLASS lhc__SalesOrder IMPLEMENTATION.

  METHOD get_instance_features.
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

ENDCLASS.
