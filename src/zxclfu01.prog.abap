*&---------------------------------------------------------------------*
*& Include          ZXCLFU01
*&---------------------------------------------------------------------*
IF cl_abap_context_info=>get_user_technical_name( ) EQ 'SHAVIK10'.

  "Vendor Batch under Classification




*
*  IF t_allkssk[] IS NOT INITIAL.
*    DATA(ls_allkssk) = t_allkssk[ 1 ].
*  ENDIF.
*
*  "BREAK shavik10.

"CLMA_CLASS_EXIST

"  mafido        like kssk-mafid value 'O',
"  mafidk        like kssk-mafid value 'K',

*  call function 'BAPI_OBJCL_CREATE'
*    EXPORTING
**      objectkeynew      =
*      objecttablenew    = i_rmclf-obtab
*      classnumnew       =
*      classtypenew      =
**      status            = '1'
**      standardclass     =
**      changenumber      =
**      keydate           = SY-DATUM
**      no_default_values = space
**      objectkeynew_long =
**    IMPORTING
**      classif_status    =
*    TABLES
**      allocvaluesnum    =
**      allocvalueschar   =
**      allocvaluescurr   =
*      return            =
*    .
*
  "e_active = abap_true.
**
*  APPEND LINES OF VALUE rmclkssk_tt(
*  (
*    objek = i_rmclf-objek
*    clint = '0000000028'               "<<< Class Number = KLAH-CLINT Table using CLASS and KLART
*    klart = i_rmclf-klart
*    mafid = 'O'
*    statu = '1' "<<< Class Number = KLAH-
*    stdcl = 'X' "Stay blank
*    class = i_rmclf-class
*    obtab = i_rmclf-obtab
*  ) ) TO t_allkssk.

*    kschl = i_rmclf-kltxt "Automated
*    zaehl = i_rmclf-zaehl "Automated
*    stdcl = ' ' "Stay blank
*    vbkz = 'I' "Auto update
*    cuobj = '000000000000003140' "Generated CUOB_GET_NEW_NUMBER
*    praus = 'X' "Default using KLAH
*    lock = 'X'  "


"BREAK shavik10.

**
**Key Column mandt   mandt  clnt(3)  Client
**Key Column objek   cuobn  char(90)  Key of Object to be Classified
**Key Column atinn   atinn  numc(10)  Internal characteristic
**Key Column atzhl   wzaehl  numc(3)  Characteristic value counter
**Key Column mafid   klmaf  char(1)  Indicator: Object/Class
**Key Column klart   klassenart  char(3)  Class Type
*
*  "g_save_called
*
"break shavik10.
*data: lv_cuobj type cuobj.
*
*            call function 'CUOB_GET_NEW_NUMBER'
*                 exporting
*                      class_type    = i_rmclf-klart
*                      object_id     = i_rmclf-objek
*                      table         = i_rmclf-obtab
*                      with_commit   = space
*                 importing
*                      object_number = lv_cuobj
*                 exceptions
*                      lock_problem  = 1.
*
*  APPEND LINES OF VALUE rmclausp_t(
*  (
*    objek = i_rmclf-objek "i_rmclf-objek
*    atinn = '0000000871' "?   >>> CLSE_SELECT_CABN  CAB using ZVENDORBATCH3                              "0000000871
*    atzhl = '000'
*    klart = i_rmclf-klart
*    mafid = 'O'
*    atwrt = i_rmclf-matnr "'123456789'
*    "est_atwrt = '123456'
*    atcod = '1'             "?
*    statu = 'H'                     "hinzu(H) or loeschen(L)
*    cuobj = lv_cuobj
*    obtab =  i_rmclf-obtab
* ) ) TO t_allausp.

  "BREAK shavik10.
ENDIF.
