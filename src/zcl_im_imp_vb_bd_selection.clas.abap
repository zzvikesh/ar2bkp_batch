class ZCL_IM_IMP_VB_BD_SELECTION definition
  public
  final
  create public .

public section.

  interfaces IF_EX_VB_BD_SELECTION .
protected section.
private section.
ENDCLASS.



CLASS ZCL_IM_IMP_VB_BD_SELECTION IMPLEMENTATION.


  method IF_EX_VB_BD_SELECTION~PRESELECT_BATCHES.
  BREAK shavik10.
  endmethod.


  method IF_EX_VB_BD_SELECTION~PRESELECT_STOCKS.
  endmethod.


  method IF_EX_VB_BD_SELECTION~RESTRICT_CONF_CHARS.
  endmethod.


  method IF_EX_VB_BD_SELECTION~SET_CHAR_EXCLUDING.
  endmethod.
ENDCLASS.
