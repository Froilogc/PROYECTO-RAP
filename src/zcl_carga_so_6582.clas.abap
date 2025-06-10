CLASS zcl_carga_so_6582 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_carga_so_6582 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA: lt_ITEMS   TYPE TABLE OF zsoi_6582,
          lt_HEADERS TYPE TABLE OF zsoh_6582.

          lt_HEADERS = VALUE #(
  ( id = '1' email = 'luis.ramirez92@mail.com'     firstname = 'LUIS'     lastname = 'RAMIREZ' country = 'Mexico'    creation = '20220101' deliverydate = '20220115' orderstatus = 1 imageurl = '' )
  ( id = '2' email = 'carla.torres77@email.com'     firstname = 'CARLA'    lastname = 'TORRES'  country = 'Chile'     creation = '20220103' deliverydate = '20220118' orderstatus = 2 imageurl = '' )
  ( id = '3' email = 'david.mendez33@correo.com'    firstname = 'DAVID'    lastname = 'MENDEZ'  country = 'Colombia'  creation = '20220105' deliverydate = '20220120' orderstatus = 3 imageurl = '' )
  ( id = '4' email = 'laura.gomez56@example.com'    firstname = 'LAURA'    lastname = 'GOMEZ'   country = 'Argentina' creation = '20220107' deliverydate = '20220122' orderstatus = 1 imageurl = '' )
  ( id = '5' email = 'andres.lopez88@mail.com'      firstname = 'ANDRES'   lastname = 'LOPEZ'   country = 'Peru'      creation = '20220109' deliverydate = '20220125' orderstatus = 2 imageurl = '' )
  ( id = '6' email = 'valentina.diaz44@email.com'   firstname = 'VALENTINA' lastname = 'DIAZ'    country = 'Mexico'    creation = '20220111' deliverydate = '20220127' orderstatus = 3 imageurl = '' )
  ( id = '7' email = 'sebastian.arias21@correo.com' firstname = 'SEBASTIAN' lastname = 'ARIAS'   country = 'Brazil'    creation = '20220113' deliverydate = '20220130' orderstatus = 1 imageurl = '' )
  ( id = '8' email = 'camila.perez99@example.com'   firstname = 'CAMILA'   lastname = 'PEREZ'   country = 'USA'       creation = '20220115' deliverydate = '20220201' orderstatus = 2 imageurl = '' )
  ( id = '9' email = 'mateo.fuentes12@mail.com'     firstname = 'MATEO'    lastname = 'FUENTES' country = 'Spain'     creation = '20220117' deliverydate = '20220203' orderstatus = 3 imageurl = '' )
  ( id = '10' email = 'natalia.castro65@email.com'   firstname = 'NATALIA'  lastname = 'CASTRO'  country = 'Germany'   creation = '20220119' deliverydate = '20220205' orderstatus = 1 imageurl = '' )
).
   DELETE FROM zsoh_6582.
   INSERT zsoh_6582 FROM TABLE @lt_headers.

   if sy-subrc eq 0.
     out->write( |SALES: { sy-dbcnt } registros insertados| ).
    endif.



  lt_ITEMS = VALUE #(
  ( id = '1' pos = 1 name = 'MONITOR 27"' description = 'Monitor FullHD 27 pulgadas' releasedate = '20220103' discontinuedate = '20230415' price = '299.00' unit_field = 'KG' height = '35.2' width = '47.1' depth = '78.8' quantity = 23 )
( id = '1' pos = 2 name = 'CARGADOR' description = 'Cargador rápido USB-C' releasedate = '20231225' discontinuedate = '20240808' price = '39.99' unit_field = 'CM' height = '35.8' width = '46.2' depth = '72.0' quantity = 51 )
( id = '2' pos = 1 name = 'MOUSE GAMER' description = 'Mouse óptico USB' releasedate = '20230913' discontinuedate = '20240924' price = '49.99' unit_field = 'CM' height = '27.2' width = '72.7' depth = '72.9' quantity = 64 )
( id = '2' pos = 2 name = 'TV SMART' description = 'Smart TV 50 pulgadas' releasedate = '20200708' discontinuedate = '20210812' price = '1499.99' unit_field = 'CM' height = '6.9' width = '39.1' depth = '13.9' quantity = 96 )
( id = '3' pos = 1 name = 'CARGADOR' description = 'Cargador rápido USB-C' releasedate = '20220114' discontinuedate = '20220516' price = '39.99' unit_field = 'CM' height = '44.8' width = '85.0' depth = '28.0' quantity = 45 )
( id = '3' pos = 2 name = 'SOUNDBAR' description = 'Barra de sonido Bluetooth' releasedate = '20211026' discontinuedate = '20220509' price = '299.50' unit_field = 'LT' height = '92.9' width = '89.5' depth = '17.3' quantity = 65 )
( id = '4' pos = 1 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20210614' discontinuedate = '20220206' price = '129.99' unit_field = 'KG' height = '34.0' width = '38.9' depth = '45.2' quantity = 33 )
( id = '4' pos = 2 name = 'LAPTOP' description = 'Laptop 16GB RAM' releasedate = '20230725' discontinuedate = '20241012' price = '999.90' unit_field = 'KG' height = '65.6' width = '98.0' depth = '39.5' quantity = 53 )
( id = '5' pos = 1 name = 'SOUNDBAR' description = 'Barra de sonido Bluetooth' releasedate = '20221130' discontinuedate = '20231129' price = '299.50' unit_field = 'CM' height = '13.9' width = '47.0' depth = '57.6' quantity = 15 )
( id = '5' pos = 2 name = 'LAPTOP' description = 'Laptop 16GB RAM' releasedate = '20220306' discontinuedate = '20221122' price = '999.90' unit_field = 'KG' height = '58.1' width = '7.7' depth = '29.7' quantity = 11 )
( id = '6' pos = 1 name = 'WEBCAM' description = 'Webcam HD con micrófono' releasedate = '20211219' discontinuedate = '20220925' price = '69.99' unit_field = 'LT' height = '94.8' width = '53.9' depth = '4.6' quantity = 61 )
( id = '6' pos = 2 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20220420' discontinuedate = '20230502' price = '129.99' unit_field = 'LT' height = '15.4' width = '95.8' depth = '5.9' quantity = 40 )
( id = '7' pos = 1 name = 'LAPTOP' description = 'Laptop 16GB RAM' releasedate = '20200515' discontinuedate = '20210103' price = '999.90' unit_field = 'CM' height = '10.7' width = '89.2' depth = '7.7' quantity = 88 )
( id = '7' pos = 2 name = 'LAPTOP' description = 'Laptop 16GB RAM' releasedate = '20231114' discontinuedate = '20240907' price = '999.90' unit_field = 'LT' height = '4.4' width = '99.4' depth = '88.9' quantity = 55 )
( id = '8' pos = 1 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20200908' discontinuedate = '20211123' price = '129.99' unit_field = 'KG' height = '21.3' width = '71.7' depth = '94.3' quantity = 74 )
( id = '8' pos = 2 name = 'MOUSE GAMER' description = 'Mouse óptico USB' releasedate = '20220801' discontinuedate = '20221117' price = '49.99' unit_field = 'LT' height = '28.5' width = '33.3' depth = '65.1' quantity = 65 )
( id = '9' pos = 1 name = 'FUNDA TABLET' description = 'Funda antishock' releasedate = '20200216' discontinuedate = '20201026' price = '29.90' unit_field = 'CM' height = '23.9' width = '40.0' depth = '30.1' quantity = 86 )
( id = '9' pos = 2 name = 'MONITOR 27"' description = 'Monitor FullHD 27 pulgadas' releasedate = '20220906' discontinuedate = '20231020' price = '299.00' unit_field = 'LT' height = '47.2' width = '39.6' depth = '45.9' quantity = 37 )
( id = '10' pos = 1 name = 'MONITOR 27"' description = 'Monitor FullHD 27 pulgadas' releasedate = '20210506' discontinuedate = '20211126' price = '299.00' unit_field = 'LT' height = '32.0' width = '85.2' depth = '88.3' quantity = 83 )
( id = '10' pos = 2 name = 'MOUSE GAMER' description = 'Mouse óptico USB' releasedate = '20230919' discontinuedate = '20250104' price = '49.99' unit_field = 'LT' height = '29.8' width = '38.8' depth = '69.0' quantity = 89 )


).
    DELETE FROM zsoi_6582.
    INSERT  zsoi_6582 FROM TABLE @lt_items.

    IF sy-subrc EQ 0.
      out->write( |ITEMS: { sy-dbcnt } registros insertados| ).
    ENDIF.




  ENDMETHOD.

ENDCLASS.
