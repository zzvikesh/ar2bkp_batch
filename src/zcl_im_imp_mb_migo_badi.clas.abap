CLASS zcl_im_imp_mb_migo_badi DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_badi_interface .
    INTERFACES if_ex_mb_migo_badi .
  PROTECTED SECTION.
  PRIVATE SECTION.

    TYPES:
      BEGIN OF gty_item,
        line_id TYPE mb_line_id.
        INCLUDE TYPE goitem.
  TYPES END OF gty_item.

    DATA:
      gt_item TYPE STANDARD TABLE OF gty_item.

ENDCLASS.



CLASS zcl_im_imp_mb_migo_badi IMPLEMENTATION.


  METHOD if_ex_mb_migo_badi~check_header.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~check_item.

    "BREAK shavik10.

    "Warning: If the CHARG is blank.
    "Only for 9*

    SELECT SINGLE FROM zvks_mg_btc_test FIELDS * WHERE lo_lx = @abap_true INTO @DATA(ls_mg_btc_test).
    IF sy-subrc IS INITIAL.

      "--- Lot Tracked ---"

      READ TABLE gt_item ASSIGNING FIELD-SYMBOL(<lfs_item>) WITH KEY line_id = i_line_id.
      IF sy-subrc IS INITIAL.
        IF <lfs_item>-licha IS INITIAL.
          "Supplier Batch is mandatory for the material.
          et_bapiret2 = VALUE #( ( type = 'E' id = 'ZOTC_MSG' number = '003' ) ).       "Check for 989
        ENDIF.
      ENDIF.

    ELSE.
      "--- Regular/Expiration Tracked ---"
      "Do nothing
    ENDIF.

    "BREAK shavik10.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~hold_data_delete.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~hold_data_load.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~hold_data_save.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~init.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~line_delete.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~line_modify.

    "BREAK shavik10.

    SELECT SINGLE FROM zvks_mg_btc_test FIELDS * WHERE lo_lx = @abap_true INTO @DATA(ls_mg_btc_test).
    IF sy-subrc IS INITIAL.

      "--- Lot Tracked ---"

      IF cs_goitem-licha IS NOT INITIAL.

        SELECT
          FROM i_batch
        FIELDS plant,
               material,
               batch,
               batchismarkedfordeletion,
               matlbatchisinrstrcdusestock,
               supplier,
               batchbysupplier
          WHERE plant EQ @cs_goitem-werks
            AND material EQ @cs_goitem-matnr
            AND batchbysupplier EQ @cs_goitem-licha
          INTO TABLE @DATA(lt_batch).
        IF sy-subrc IS INITIAL.
          "Regular/Expiration Tracked (ME/MT)
          cs_goitem-charg = lt_batch[ 1 ]-batch.
        ELSE.
          "System generated Batch
        ENDIF.
      ELSE.
        "Do nothing, throw error in CHECK_ITEM
      ENDIF.

    ELSE.

      "--- Regular/Expiration Tracked ---"

      cs_goitem-licha = cs_goitem-matnr.

      SELECT
        FROM i_batch
      FIELDS plant,
             material,
             batch,
             batchismarkedfordeletion,
             matlbatchisinrstrcdusestock,
             supplier,
             batchbysupplier
        WHERE plant EQ @cs_goitem-werks
          AND material EQ @cs_goitem-matnr
          AND batchbysupplier EQ @cs_goitem-licha
        INTO TABLE @lt_batch.
      IF sy-subrc IS INITIAL.
        "Regular/Expiration Tracked (ME/MT)
        cs_goitem-charg = lt_batch[ 1 ]-batch.
        BREAK shavik10.
      ELSE.
        "System generated Batch
      ENDIF.
    ENDIF.

    READ TABLE gt_item ASSIGNING FIELD-SYMBOL(<lfs_item>) WITH KEY line_id = i_line_id.
    IF sy-subrc IS INITIAL.
      <lfs_item> = CORRESPONDING #( cs_goitem ).
      <lfs_item>-line_id = i_line_id.
    ELSE.
      INSERT INITIAL LINE INTO TABLE gt_item ASSIGNING <lfs_item>.
      <lfs_item> = CORRESPONDING #(  cs_goitem ).
      <lfs_item>-line_id = i_line_id.
    ENDIF.

    "BREAK shavik10.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~maa_line_id_adjust.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~mode_set.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~pai_detail.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~pai_header.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~pbo_detail.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~pbo_header.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~post_document.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~propose_serialnumbers.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~publish_material_item.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~reset.
  ENDMETHOD.


  METHOD if_ex_mb_migo_badi~status_and_header.
  ENDMETHOD.
ENDCLASS.
