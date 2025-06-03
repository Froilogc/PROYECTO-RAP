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
  ( id = '0000000001' email = 'luis.ramirez92@mail.com'     firstname = 'LUIS'     lastname = 'RAMIREZ' country = 'Mexico'    creation = '20220101' deliverydate = '20220115' orderstatus = 1 imageurl = '' )
  ( id = '0000000002' email = 'carla.torres77@email.com'     firstname = 'CARLA'    lastname = 'TORRES'  country = 'Chile'     creation = '20220103' deliverydate = '20220118' orderstatus = 2 imageurl = '' )
  ( id = '0000000003' email = 'david.mendez33@correo.com'    firstname = 'DAVID'    lastname = 'MENDEZ'  country = 'Colombia'  creation = '20220105' deliverydate = '20220120' orderstatus = 3 imageurl = '' )
  ( id = '0000000004' email = 'laura.gomez56@example.com'    firstname = 'LAURA'    lastname = 'GOMEZ'   country = 'Argentina' creation = '20220107' deliverydate = '20220122' orderstatus = 1 imageurl = '' )
  ( id = '0000000005' email = 'andres.lopez88@mail.com'      firstname = 'ANDRES'   lastname = 'LOPEZ'   country = 'Peru'      creation = '20220109' deliverydate = '20220125' orderstatus = 2 imageurl = '' )
  ( id = '0000000006' email = 'valentina.diaz44@email.com'   firstname = 'VALENTINA' lastname = 'DIAZ'    country = 'Mexico'    creation = '20220111' deliverydate = '20220127' orderstatus = 3 imageurl = '' )
  ( id = '0000000007' email = 'sebastian.arias21@correo.com' firstname = 'SEBASTIAN' lastname = 'ARIAS'   country = 'Brazil'    creation = '20220113' deliverydate = '20220130' orderstatus = 1 imageurl = '' )
  ( id = '0000000008' email = 'camila.perez99@example.com'   firstname = 'CAMILA'   lastname = 'PEREZ'   country = 'USA'       creation = '20220115' deliverydate = '20220201' orderstatus = 2 imageurl = '' )
  ( id = '0000000009' email = 'mateo.fuentes12@mail.com'     firstname = 'MATEO'    lastname = 'FUENTES' country = 'Spain'     creation = '20220117' deliverydate = '20220203' orderstatus = 3 imageurl = '' )
  ( id = '0000000010' email = 'natalia.castro65@email.com'   firstname = 'NATALIA'  lastname = 'CASTRO'  country = 'Germany'   creation = '20220119' deliverydate = '20220205' orderstatus = 1 imageurl = '' )
).
   DELETE FROM zsoh_6582.
   INSERT zsoh_6582 FROM TABLE @lt_headers.

   if sy-subrc eq 0.
     out->write( |SALES: { sy-dbcnt } registros insertados| ).
    endif.



  lt_ITEMS = VALUE #(
  ( id = '0000000001' pos = 1 name = 'MONITOR 27"' description = 'Monitor FullHD 27 pulgadas' releasedate = '20220103' discontinuedate = '20230415' price = '299.00' unit_field = 'KG' height = '35.2' width = '47.1' depth = '78.8' quantity = 23 )
  ( id = '0000000001' pos = 2 name = 'CARGADOR' description = 'Cargador rápido USB-C' releasedate = '20231225' discontinuedate = '20240808' price = '39.99' unit_field = 'CM' height = '35.8' width = '46.2' depth = '72.0' quantity = 51 )
  ( id = '0000000002' pos = 1 name = 'MOUSE GAMER' description = 'Mouse óptico USB' releasedate = '20230913' discontinuedate = '20240924' price = '49.99' unit_field = 'CM' height = '27.2' width = '72.7' depth = '72.9' quantity = 64 )
  ( id = '0000000002' pos = 2 name = 'TV SMART' description = 'Smart TV 50 pulgadas' releasedate = '20200708' discontinuedate = '20210812' price = '1499.99' unit_field = 'CM' height = '6.9' width = '39.1' depth = '13.9' quantity = 96 )
  ( id = '0000000003' pos = 1 name = 'CARGADOR' description = 'Cargador rápido USB-C' releasedate = '20220114' discontinuedate = '20220516' price = '39.99' unit_field = 'CM' height = '44.8' width = '85.0' depth = '28.0' quantity = 45 )
  ( id = '0000000003' pos = 2 name = 'SOUNDBAR' description = 'Barra de sonido Bluetooth' releasedate = '20211026' discontinuedate = '20220509' price = '299.50' unit_field = 'LT' height = '92.9' width = '89.5' depth = '17.3' quantity = 65 )
  ( id = '0000000004' pos = 1 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20210614' discontinuedate = '20220206' price = '129.99' unit_field = 'KG' height = '34.0' width = '38.9' depth = '45.2' quantity = 33 )
  ( id = '0000000004' pos = 2 name = 'LAPTOP' description = 'Laptop 16GB RAM' releasedate = '20230725' discontinuedate = '20241012' price = '999.90' unit_field = 'KG' height = '65.6' width = '98.0' depth = '39.5' quantity = 53 )
  ( id = '0000000005' pos = 1 name = 'SOUNDBAR' description = 'Barra de sonido Bluetooth' releasedate = '20221130' discontinuedate = '20231129' price = '299.50' unit_field = 'CM' height = '13.9' width = '47.0' depth = '57.6' quantity = 15 )
  ( id = '0000000005' pos = 2 name = 'LAPTOP' description = 'Laptop 16GB RAM' releasedate = '20220306' discontinuedate = '20221122' price = '999.90' unit_field = 'KG' height = '58.1' width = '7.7' depth = '29.7' quantity = 11 )
  ( id = '0000000006' pos = 1 name = 'WEBCAM' description = 'Webcam HD con micrófono' releasedate = '20211219' discontinuedate = '20220925' price = '69.99' unit_field = 'LT' height = '94.8' width = '53.9' depth = '4.6' quantity = 61 )
  ( id = '0000000006' pos = 2 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20220420' discontinuedate = '20230502' price = '129.99' unit_field = 'LT' height = '15.4' width = '95.8' depth = '5.9' quantity = 40 )
  ( id = '0000000007' pos = 1 name = 'LAPTOP' description = 'Laptop 16GB RAM' releasedate = '20200515' discontinuedate = '20210103' price = '999.90' unit_field = 'CM' height = '10.7' width = '89.2' depth = '7.7' quantity = 88 )
  ( id = '0000000007' pos = 2 name = 'LAPTOP' description = 'Laptop 16GB RAM' releasedate = '20231114' discontinuedate = '20240907' price = '999.90' unit_field = 'LT' height = '4.4' width = '99.4' depth = '88.9' quantity = 55 )
  ( id = '0000000008' pos = 1 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20200908' discontinuedate = '20211123' price = '129.99' unit_field = 'KG' height = '21.3' width = '71.7' depth = '94.3' quantity = 74 )
  ( id = '0000000008' pos = 2 name = 'MOUSE GAMER' description = 'Mouse óptico USB' releasedate = '20220801' discontinuedate = '20221117' price = '49.99' unit_field = 'LT' height = '28.5' width = '33.3' depth = '65.1' quantity = 65 )
  ( id = '0000000009' pos = 1 name = 'FUNDA TABLET' description = 'Funda antishock' releasedate = '20200216' discontinuedate = '20201026' price = '29.90' unit_field = 'CM' height = '23.9' width = '40.0' depth = '30.1' quantity = 86 )
  ( id = '0000000009' pos = 2 name = 'MONITOR 27"' description = 'Monitor FullHD 27 pulgadas' releasedate = '20220906' discontinuedate = '20231020' price = '299.00' unit_field = 'LT' height = '47.2' width = '39.6' depth = '45.9' quantity = 37 )
  ( id = '0000000010' pos = 1 name = 'MONITOR 27"' description = 'Monitor FullHD 27 pulgadas' releasedate = '20210506' discontinuedate = '20211126' price = '299.00' unit_field = 'LT' height = '32.0' width = '85.2' depth = '88.3' quantity = 83 )
  ( id = '0000000010' pos = 2 name = 'MOUSE GAMER' description = 'Mouse óptico USB' releasedate = '20230919' discontinuedate = '20250104' price = '49.99' unit_field = 'LT' height = '29.8' width = '38.8' depth = '69.0' quantity = 89 )
  ( id = '0000000011' pos = 1 name = 'MOUSE GAMER' description = 'Mouse óptico USB' releasedate = '20230423' discontinuedate = '20231111' price = '49.99' unit_field = 'LT' height = '81.9' width = '72.5' depth = '29.1' quantity = 68 )
  ( id = '0000000011' pos = 2 name = 'TABLET' description = 'Tablet 10 pulgadas' releasedate = '20230816' discontinuedate = '20240721' price = '599.00' unit_field = 'KG' height = '9.1' width = '34.9' depth = '27.9' quantity = 21 )
  ( id = '0000000012' pos = 1 name = 'MOUSE GAMER' description = 'Mouse óptico USB' releasedate = '20200419' discontinuedate = '20200825' price = '49.99' unit_field = 'LT' height = '6.7' width = '37.7' depth = '79.1' quantity = 31 )
  ( id = '0000000012' pos = 2 name = 'TV SMART' description = 'Smart TV 50 pulgadas' releasedate = '20210418' discontinuedate = '20211227' price = '1499.99' unit_field = 'KG' height = '48.1' width = '35.9' depth = '41.3' quantity = 70 )
  ( id = '0000000013' pos = 1 name = 'AURICULARES' description = 'Auriculares inalámbricos' releasedate = '20220222' discontinuedate = '20221010' price = '89.99' unit_field = 'KG' height = '62.3' width = '81.4' depth = '27.4' quantity = 52 )
  ( id = '0000000013' pos = 2 name = 'MOUSE GAMER' description = 'Mouse óptico USB' releasedate = '20220430' discontinuedate = '20220908' price = '49.99' unit_field = 'CM' height = '81.3' width = '42.7' depth = '2.5' quantity = 85 )
  ( id = '0000000014' pos = 1 name = 'MONITOR 27"' description = 'Monitor FullHD 27 pulgadas' releasedate = '20210903' discontinuedate = '20220209' price = '299.00' unit_field = 'KG' height = '62.7' width = '83.9' depth = '32.7' quantity = 1 )
  ( id = '0000000014' pos = 2 name = 'MONITOR 27"' description = 'Monitor FullHD 27 pulgadas' releasedate = '20220305' discontinuedate = '20221021' price = '299.00' unit_field = 'KG' height = '62.1' width = '33.4' depth = '7.4' quantity = 68 )
  ( id = '0000000015' pos = 1 name = 'CARGADOR' description = 'Cargador rápido USB-C' releasedate = '20200316' discontinuedate = '20200929' price = '39.99' unit_field = 'CM' height = '25.0' width = '73.7' depth = '2.3' quantity = 54 )
  ( id = '0000000015' pos = 2 name = 'MONITOR 27"' description = 'Monitor FullHD 27 pulgadas' releasedate = '20200121' discontinuedate = '20201226' price = '299.00' unit_field = 'LT' height = '57.7' width = '47.0' depth = '27.2' quantity = 42 )
  ( id = '0000000016' pos = 1 name = 'CELULAR' description = 'Smartphone 128GB' releasedate = '20200915' discontinuedate = '20210407' price = '799.90' unit_field = 'LT' height = '6.8' width = '90.5' depth = '46.6' quantity = 50 )
  ( id = '0000000016' pos = 2 name = 'FUNDA TABLET' description = 'Funda antishock' releasedate = '20210822' discontinuedate = '20220326' price = '29.90' unit_field = 'CM' height = '94.6' width = '11.1' depth = '83.5' quantity = 17 )
  ( id = '0000000017' pos = 1 name = 'TABLET' description = 'Tablet 10 pulgadas' releasedate = '20201008' discontinuedate = '20211228' price = '599.00' unit_field = 'CM' height = '76.6' width = '71.5' depth = '64.8' quantity = 31 )
  ( id = '0000000017' pos = 2 name = 'WEBCAM' description = 'Webcam HD con micrófono' releasedate = '20200101' discontinuedate = '20210108' price = '69.99' unit_field = 'CM' height = '66.0' width = '41.2' depth = '67.1' quantity = 38 )
  ( id = '0000000018' pos = 1 name = 'SOUNDBAR' description = 'Barra de sonido Bluetooth' releasedate = '20221025' discontinuedate = '20230322' price = '299.50' unit_field = 'CM' height = '49.0' width = '55.2' depth = '11.0' quantity = 35 )
  ( id = '0000000018' pos = 2 name = 'FUNDA TABLET' description = 'Funda antishock' releasedate = '20220820' discontinuedate = '20230919' price = '29.90' unit_field = 'KG' height = '71.0' width = '28.9' depth = '26.2' quantity = 25 )
  ( id = '0000000019' pos = 1 name = 'ROUTER' description = 'Router Wifi 6' releasedate = '20210326' discontinuedate = '20220629' price = '149.00' unit_field = 'LT' height = '80.8' width = '51.4' depth = '70.3' quantity = 81 )
  ( id = '0000000019' pos = 2 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20230416' discontinuedate = '20240716' price = '129.99' unit_field = 'CM' height = '75.1' width = '49.0' depth = '75.9' quantity = 96 )
  ( id = '0000000020' pos = 1 name = 'FUNDA TABLET' description = 'Funda antishock' releasedate = '20210706' discontinuedate = '20220624' price = '29.90' unit_field = 'LT' height = '96.8' width = '66.8' depth = '51.3' quantity = 47 )
  ( id = '0000000020' pos = 2 name = 'CARGADOR' description = 'Cargador rápido USB-C' releasedate = '20220324' discontinuedate = '20230508' price = '39.99' unit_field = 'KG' height = '75.2' width = '43.3' depth = '8.1' quantity = 34 )
  ( id = '0000000021' pos = 1 name = 'FUNDA TABLET' description = 'Funda antishock' releasedate = '20201202' discontinuedate = '20211211' price = '29.90' unit_field = 'KG' height = '97.5' width = '98.1' depth = '7.7' quantity = 20 )
  ( id = '0000000021' pos = 2 name = 'CARGADOR' description = 'Cargador rápido USB-C' releasedate = '20220202' discontinuedate = '20220608' price = '39.99' unit_field = 'CM' height = '44.1' width = '84.6' depth = '31.3' quantity = 78 )
  ( id = '0000000022' pos = 1 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20220520' discontinuedate = '20220902' price = '129.99' unit_field = 'KG' height = '77.2' width = '28.1' depth = '52.4' quantity = 4 )
  ( id = '0000000022' pos = 2 name = 'CELULAR' description = 'Smartphone 128GB' releasedate = '20211005' discontinuedate = '20220926' price = '799.90' unit_field = 'CM' height = '2.1' width = '54.6' depth = '44.3' quantity = 85 )
  ( id = '0000000023' pos = 1 name = 'ROUTER' description = 'Router Wifi 6' releasedate = '20220725' discontinuedate = '20231115' price = '149.00' unit_field = 'CM' height = '17.2' width = '35.0' depth = '3.9' quantity = 57 )
  ( id = '0000000023' pos = 2 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20200823' discontinuedate = '20210422' price = '129.99' unit_field = 'CM' height = '14.0' width = '53.7' depth = '72.7' quantity = 35 )
  ( id = '0000000024' pos = 1 name = 'WEBCAM' description = 'Webcam HD con micrófono' releasedate = '20220116' discontinuedate = '20230117' price = '69.99' unit_field = 'CM' height = '63.8' width = '57.2' depth = '43.5' quantity = 25 )
  ( id = '0000000024' pos = 2 name = 'CARGADOR' description = 'Cargador rápido USB-C' releasedate = '20200112' discontinuedate = '20200728' price = '39.99' unit_field = 'LT' height = '15.3' width = '57.3' depth = '71.8' quantity = 85 )
  ( id = '0000000025' pos = 1 name = 'CELULAR' description = 'Smartphone 128GB' releasedate = '20200316' discontinuedate = '20210711' price = '799.90' unit_field = 'KG' height = '33.0' width = '93.3' depth = '35.5' quantity = 62 )
  ( id = '0000000025' pos = 2 name = 'AURICULARES' description = 'Auriculares inalámbricos' releasedate = '20201002' discontinuedate = '20211018' price = '89.99' unit_field = 'KG' height = '71.5' width = '96.5' depth = '70.1' quantity = 89 )
  ( id = '0000000026' pos = 1 name = 'CELULAR' description = 'Smartphone 128GB' releasedate = '20200317' discontinuedate = '20210128' price = '799.90' unit_field = 'LT' height = '98.1' width = '32.4' depth = '20.7' quantity = 69 )
  ( id = '0000000026' pos = 2 name = 'SOUNDBAR' description = 'Barra de sonido Bluetooth' releasedate = '20210831' discontinuedate = '20221223' price = '299.50' unit_field = 'LT' height = '98.3' width = '93.8' depth = '75.7' quantity = 18 )
  ( id = '0000000027' pos = 1 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20230119' discontinuedate = '20240525' price = '129.99' unit_field = 'KG' height = '68.5' width = '52.0' depth = '59.3' quantity = 37 )
  ( id = '0000000027' pos = 2 name = 'FUNDA TABLET' description = 'Funda antishock' releasedate = '20200124' discontinuedate = '20201121' price = '29.90' unit_field = 'KG' height = '44.7' width = '82.0' depth = '76.8' quantity = 6 )
  ( id = '0000000028' pos = 1 name = 'AURICULARES' description = 'Auriculares inalámbricos' releasedate = '20210730' discontinuedate = '20220224' price = '89.99' unit_field = 'KG' height = '43.3' width = '23.9' depth = '48.0' quantity = 57 )
  ( id = '0000000028' pos = 2 name = 'TABLET' description = 'Tablet 10 pulgadas' releasedate = '20220809' discontinuedate = '20231017' price = '599.00' unit_field = 'KG' height = '7.0' width = '21.4' depth = '57.2' quantity = 22 )
  ( id = '0000000029' pos = 1 name = 'TECLADO MEC' description = 'Teclado mecánico RGB' releasedate = '20220201' discontinuedate = '20220815' price = '79.99' unit_field = 'CM' height = '33.9' width = '24.7' depth = '89.2' quantity = 81 )
  ( id = '0000000029' pos = 2 name = 'TV SMART' description = 'Smart TV 50 pulgadas' releasedate = '20230918' discontinuedate = '20240702' price = '1499.99' unit_field = 'KG' height = '54.1' width = '71.4' depth = '84.9' quantity = 18 )
  ( id = '0000000030' pos = 1 name = 'TV SMART' description = 'Smart TV 50 pulgadas' releasedate = '20210917' discontinuedate = '20220611' price = '1499.99' unit_field = 'KG' height = '59.5' width = '12.9' depth = '92.1' quantity = 38 )
  ( id = '0000000030' pos = 2 name = 'TABLET' description = 'Tablet 10 pulgadas' releasedate = '20200710' discontinuedate = '20210223' price = '599.00' unit_field = 'LT' height = '40.1' width = '41.6' depth = '60.2' quantity = 96 )
  ( id = '0000000031' pos = 1 name = 'WEBCAM' description = 'Webcam HD con micrófono' releasedate = '20211224' discontinuedate = '20220721' price = '69.99' unit_field = 'KG' height = '58.4' width = '4.1' depth = '60.3' quantity = 20 )
  ( id = '0000000031' pos = 2 name = 'WEBCAM' description = 'Webcam HD con micrófono' releasedate = '20210916' discontinuedate = '20221118' price = '69.99' unit_field = 'CM' height = '60.6' width = '83.8' depth = '59.5' quantity = 80 )
  ( id = '0000000032' pos = 1 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20230529' discontinuedate = '20231117' price = '129.99' unit_field = 'CM' height = '12.6' width = '87.4' depth = '65.0' quantity = 10 )
  ( id = '0000000032' pos = 2 name = 'AURICULARES' description = 'Auriculares inalámbricos' releasedate = '20221011' discontinuedate = '20231203' price = '89.99' unit_field = 'LT' height = '39.1' width = '94.9' depth = '74.1' quantity = 97 )
  ( id = '0000000033' pos = 1 name = 'AURICULARES' description = 'Auriculares inalámbricos' releasedate = '20230515' discontinuedate = '20231210' price = '89.99' unit_field = 'KG' height = '57.2' width = '85.0' depth = '98.7' quantity = 17 )
  ( id = '0000000033' pos = 2 name = 'IMPRESORA' description = 'Impresora multifunción' releasedate = '20211021' discontinuedate = '20221123' price = '199.00' unit_field = 'CM' height = '70.9' width = '87.6' depth = '40.6' quantity = 10 )
  ( id = '0000000034' pos = 1 name = 'CELULAR' description = 'Smartphone 128GB' releasedate = '20220729' discontinuedate = '20230317' price = '799.90' unit_field = 'CM' height = '19.7' width = '89.1' depth = '23.3' quantity = 58 )
  ( id = '0000000034' pos = 2 name = 'TECLADO MEC' description = 'Teclado mecánico RGB' releasedate = '20220319' discontinuedate = '20220808' price = '79.99' unit_field = 'CM' height = '36.3' width = '19.3' depth = '64.4' quantity = 89 )
  ( id = '0000000035' pos = 1 name = 'TABLET' description = 'Tablet 10 pulgadas' releasedate = '20200530' discontinuedate = '20210317' price = '599.00' unit_field = 'KG' height = '36.6' width = '51.5' depth = '69.4' quantity = 84 )
  ( id = '0000000035' pos = 2 name = 'IMPRESORA' description = 'Impresora multifunción' releasedate = '20230318' discontinuedate = '20231023' price = '199.00' unit_field = 'LT' height = '11.4' width = '46.8' depth = '66.9' quantity = 74 )
  ( id = '0000000036' pos = 1 name = 'TV SMART' description = 'Smart TV 50 pulgadas' releasedate = '20210224' discontinuedate = '20210924' price = '1499.99' unit_field = 'LT' height = '99.6' width = '93.3' depth = '87.3' quantity = 9 )
  ( id = '0000000036' pos = 2 name = 'CELULAR' description = 'Smartphone 128GB' releasedate = '20221202' discontinuedate = '20231015' price = '799.90' unit_field = 'CM' height = '16.2' width = '39.7' depth = '2.0' quantity = 23 )
  ( id = '0000000037' pos = 1 name = 'AURICULARES' description = 'Auriculares inalámbricos' releasedate = '20230109' discontinuedate = '20240427' price = '89.99' unit_field = 'CM' height = '19.3' width = '67.4' depth = '37.8' quantity = 8 )
  ( id = '0000000037' pos = 2 name = 'ROUTER' description = 'Router Wifi 6' releasedate = '20231028' discontinuedate = '20250302' price = '149.00' unit_field = 'CM' height = '25.0' width = '54.1' depth = '19.8' quantity = 87 )
  ( id = '0000000038' pos = 1 name = 'ROUTER' description = 'Router Wifi 6' releasedate = '20210121' discontinuedate = '20210528' price = '149.00' unit_field = 'KG' height = '12.5' width = '10.5' depth = '54.6' quantity = 3 )
  ( id = '0000000038' pos = 2 name = 'SOUNDBAR' description = 'Barra de sonido Bluetooth' releasedate = '20211011' discontinuedate = '20220202' price = '299.50' unit_field = 'LT' height = '14.9' width = '6.8' depth = '85.5' quantity = 14 )
  ( id = '0000000039' pos = 1 name = 'FUNDA TABLET' description = 'Funda antishock' releasedate = '20200406' discontinuedate = '20210426' price = '29.90' unit_field = 'LT' height = '78.2' width = '1.8' depth = '49.0' quantity = 92 )
  ( id = '0000000039' pos = 2 name = 'TECLADO MEC' description = 'Teclado mecánico RGB' releasedate = '20200327' discontinuedate = '20200930' price = '79.99' unit_field = 'KG' height = '40.6' width = '46.4' depth = '20.0' quantity = 66 )
  ( id = '0000000040' pos = 1 name = 'TABLET' description = 'Tablet 10 pulgadas' releasedate = '20200208' discontinuedate = '20210504' price = '599.00' unit_field = 'LT' height = '95.6' width = '80.7' depth = '21.3' quantity = 31 )
  ( id = '0000000040' pos = 2 name = 'FUNDA TABLET' description = 'Funda antishock' releasedate = '20200430' discontinuedate = '20210526' price = '29.90' unit_field = 'LT' height = '97.6' width = '41.9' depth = '21.2' quantity = 10 )
  ( id = '0000000041' pos = 1 name = 'IMPRESORA' description = 'Impresora multifunción' releasedate = '20200724' discontinuedate = '20210522' price = '199.00' unit_field = 'LT' height = '54.5' width = '44.4' depth = '91.9' quantity = 53 )
  ( id = '0000000041' pos = 2 name = 'MONITOR 27"' description = 'Monitor FullHD 27 pulgadas' releasedate = '20230729' discontinuedate = '20231206' price = '299.00' unit_field = 'CM' height = '33.4' width = '38.1' depth = '70.1' quantity = 56 )
  ( id = '0000000042' pos = 1 name = 'SOUNDBAR' description = 'Barra de sonido Bluetooth' releasedate = '20230306' discontinuedate = '20240716' price = '299.50' unit_field = 'LT' height = '19.4' width = '5.2' depth = '8.5' quantity = 16 )
  ( id = '0000000042' pos = 2 name = 'TECLADO MEC' description = 'Teclado mecánico RGB' releasedate = '20210212' discontinuedate = '20220601' price = '79.99' unit_field = 'KG' height = '24.8' width = '38.6' depth = '69.4' quantity = 51 )
  ( id = '0000000043' pos = 1 name = 'IMPRESORA' description = 'Impresora multifunción' releasedate = '20200507' discontinuedate = '20210706' price = '199.00' unit_field = 'CM' height = '40.3' width = '15.2' depth = '78.6' quantity = 36 )
  ( id = '0000000043' pos = 2 name = 'AURICULARES' description = 'Auriculares inalámbricos' releasedate = '20230609' discontinuedate = '20240601' price = '89.99' unit_field = 'CM' height = '56.2' width = '31.8' depth = '27.8' quantity = 1 )
  ( id = '0000000044' pos = 1 name = 'SOUNDBAR' description = 'Barra de sonido Bluetooth' releasedate = '20230527' discontinuedate = '20240723' price = '299.50' unit_field = 'CM' height = '38.8' width = '11.9' depth = '45.3' quantity = 27 )
  ( id = '0000000044' pos = 2 name = 'CARGADOR' description = 'Cargador rápido USB-C' releasedate = '20230311' discontinuedate = '20240118' price = '39.99' unit_field = 'CM' height = '25.4' width = '10.5' depth = '3.9' quantity = 47 )
  ( id = '0000000045' pos = 1 name = 'LAPTOP' description = 'Laptop 16GB RAM' releasedate = '20200103' discontinuedate = '20200506' price = '999.90' unit_field = 'CM' height = '68.5' width = '8.6' depth = '58.6' quantity = 82 )
  ( id = '0000000045' pos = 2 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20230620' discontinuedate = '20240319' price = '129.99' unit_field = 'CM' height = '43.9' width = '5.0' depth = '55.8' quantity = 36 )
  ( id = '0000000046' pos = 1 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20200204' discontinuedate = '20200624' price = '129.99' unit_field = 'CM' height = '62.5' width = '39.7' depth = '78.2' quantity = 56 )
  ( id = '0000000046' pos = 2 name = 'WEBCAM' description = 'Webcam HD con micrófono' releasedate = '20210310' discontinuedate = '20220207' price = '69.99' unit_field = 'CM' height = '22.0' width = '49.1' depth = '33.1' quantity = 34 )
  ( id = '0000000047' pos = 1 name = 'CELULAR' description = 'Smartphone 128GB' releasedate = '20200907' discontinuedate = '20210907' price = '799.90' unit_field = 'LT' height = '52.7' width = '33.7' depth = '43.1' quantity = 26 )
  ( id = '0000000047' pos = 2 name = 'IMPRESORA' description = 'Impresora multifunción' releasedate = '20220220' discontinuedate = '20230104' price = '199.00' unit_field = 'CM' height = '20.8' width = '37.7' depth = '50.1' quantity = 26 )
  ( id = '0000000048' pos = 1 name = 'TV SMART' description = 'Smart TV 50 pulgadas' releasedate = '20231001' discontinuedate = '20240822' price = '1499.99' unit_field = 'CM' height = '38.1' width = '97.3' depth = '97.8' quantity = 69 )
  ( id = '0000000048' pos = 2 name = 'DISCO SSD' description = 'Disco sólido 1TB' releasedate = '20211002' discontinuedate = '20221024' price = '129.99' unit_field = 'KG' height = '66.5' width = '86.4' depth = '53.1' quantity = 57 )
  ( id = '0000000049' pos = 1 name = 'MOUSE GAMER' description = 'Mouse óptico USB' releasedate = '20200605' discontinuedate = '20210411' price = '49.99' unit_field = 'KG' height = '79.1' width = '46.6' depth = '53.6' quantity = 58 )
  ( id = '0000000049' pos = 2 name = 'TECLADO MEC' description = 'Teclado mecánico RGB' releasedate = '20220527' discontinuedate = '20230919' price = '79.99' unit_field = 'LT' height = '22.0' width = '81.7' depth = '70.2' quantity = 8 )
  ( id = '0000000050' pos = 1 name = 'ROUTER' description = 'Router Wifi 6' releasedate = '20221020' discontinuedate = '20231217' price = '149.00' unit_field = 'KG' height = '62.3' width = '34.4' depth = '82.3' quantity = 2 )
  ( id = '0000000050' pos = 2 name = 'LAPTOP' description = 'Laptop 16GB RAM' releasedate = '20200905' discontinuedate = '20210303' price = '999.90' unit_field = 'CM' height = '41.7' width = '19.1' depth = '62.4' quantity = 53 )
).
    DELETE FROM zsoi_6582.
    INSERT  zsoi_6582 FROM TABLE @lt_items.

    IF sy-subrc EQ 0.
      out->write( |ITEMS: { sy-dbcnt } registros insertados| ).
    ENDIF.




  ENDMETHOD.

ENDCLASS.
