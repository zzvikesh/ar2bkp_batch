*&---------------------------------------------------------------------*
*& Include          ZXCLFU02
*&---------------------------------------------------------------------*
*IF cl_abap_context_info=>get_user_technical_name( ) EQ 'SHAVIK10'.
*
*  "Vendor Batch under Classification
*
*  IF t_allkssk[] IS NOT INITIAL.
*    DATA(ls_allkssk) = t_allkssk[ 1 ].
*  ENDIF.
*
*  "BREAK shavik10.
*
*  e_active = abap_true.
*
**  APPEND LINES OF VALUE rmclkssk_tt(
**  (
**    objek = i_rmclf-objek
**    clint = '0000000028'
**    klart = i_rmclf-klart
**    mafid = 'O'
**    zaehl = i_rmclf-zaehl
**    statu = i_rmclf-statu
**    stdcl = 'X'
**    class = i_rmclf-class
**    kschl = i_rmclf-kltxt
**    lock = 'X'
**    praus = 'X'
**    cuobj = '000000000000003140'
**    obtab = i_rmclf-obtab
**    vbkz = 'I'
**  ) ) TO t_allkssk.
*
**Key Column mandt   mandt  clnt(3)  Client
**Key Column objek   cuobn  char(90)  Key of Object to be Classified
**Key Column atinn   atinn  numc(10)  Internal characteristic
**Key Column atzhl   wzaehl  numc(3)  Characteristic value counter
**Key Column mafid   klmaf  char(1)  Indicator: Object/Class
**Key Column klart   klassenart  char(3)  Class Type
*
*    "g_save_called
*
*  APPEND LINES OF VALUE rmclausp_t(
*  (
*    objek = ls_allkssk-objek "i_rmclf-objek
*    atinn = '0000000871'                                    "0000000871
*    atzhl = '001'
*    klart = i_rmclf-klart
*    mafid = 'O'
*    atwrt = 'VIKESHBATCH'
*    atcod = '1'
*    statu = 'H'
*    cuobj = ls_allkssk-cuobj
*    obtab = ls_allkssk-obtab
*  ) ) TO t_allausp.
*
*  BREAK shavik10.
* ENDIF.

*Column klart   klassenart  char(3)  Class Type
*Column artxt   arttxt  char(40)  Text describing class type
*Column objek   cuobn  char(90)  Key of Object to be Classified
*Column obtxt   objtxt  char(40)  Object Text
*Column class   klasse_d  char(18)  Class number
*Column kltxt   klsbez  char(40)  Class Description
*Column zaehl   posnummer  int2(5)  Sort position
*Column clasn   klasse_d  char(18)  Class number
*Column ktext   klsbez  char(40)  Class Description
*Column cltxt   objekttext  char(30)  Table text
*Column kzkla   kzkla  char(1)  Class indicator
*Column texto   obtext  char(30)  Object Name
*Column stdcl   stdclass  char(1)  Indicator: Standard Class
*Column paganz   pag_sum  numc(5)  Number of Entries
*Column pagpos   pag_first  numc(5)  First entry displayed
*Column statu   clstatus  char(1)  Classification status
*Column stattxt   eintext  char(40)  Text for a table entry
*Column kreuz   xfeld  char(1)  Checkbox
*Column radio   radiob  char(1)  Radio button
*Column zuokk   kkzuord  char(1)  Assignment to Classes
*Column zuook   okzuord  char(1)  Allocations to objects
*Column obtab   tabelle  char(30)  Name of database table for object
*Column obtyp   clobjtype  char(3)  Classification
*Column aennr1   aennr  char(12)  Change Number
*Column datuv1   datuv  dats(8)  Valid-From Date
*Column icon   clicon  char(50)  Classification status: icon
*Column abtei   abteilung  char(10)  Organizational Area
*Column atnam   atnam  char(30)  Characteristic Name
*Column guid32   guid_32  char(32)  GUID in 'CHAR' Format in Uppercase
*Column matnr   matnr  char(40)  Material Number
*Column meins   meins  unit(3)  Base Unit of Measure
*Column doknr   doknr  char(25)  Document number
*Column dokar   dokar  char(3)  Document Type
*Column doktl   doktl_d  char(3)  Document Part
*Column dokvr   dokvr  char(2)  Document Version
*Column knnam   knnam  char(30)  Name of Dependency
*Column werks   werks_d  char(4)  Plant
*Column arbpl   arbpl  char(8)  Work Center
*Column objnr   j_objnrkey  char(22)  Object
*Column lifnr   lifnr  char(10)  Account Number of Supplier
*Column kunnr   kunnr  char(10)  Customer Number
*Column netnr   nw_aufnr  char(12)  Network number
*Column charg   charg_d  char(10)  Batch Number
*Column kschl   kscha  char(4)  Condition Type
*Column aennr   aennr  char(12)  Change Number
*Column klart_cuvt   klassenart  char(3)  Class Type
*Column class_cuvt   klasse_d  char(18)  Class number
*Column lnpos   culnpos  numc(4)  Variant table item number
*Column bsstr   klasse_d  char(18)  Class number
*Column wghie   klasse_d  char(18)  Class number
*Column wargr   matkl  char(9)  Material Group
*Column wghie1   klasse_d  char(18)  Class number
*Column satnr   satnr  char(40)  Cross-Plant Configurable Material
*Column kokrs   kokrs  char(4)  Controlling Area
*Column prznr   co_prznr  char(12)  Business Process
*Column datbi   datbi  dats(8)  Valid To Date
*Column frggr   frggr  char(2)  Release group
*Column gjahr   gjahr  numc(4)  Fiscal Year
*Column rsnum   rsnum  numc(10)  Number of reservation/dependent requirements
*Column rspos   rspos  numc(4)  Item Number of Reservation / Dependent Requirements
*Column rsart   rsart  char(1)  Record type
*Column asnum   asnum  char(18)  Activity Number
*Column fikrs   fikrs  char(4)  Financial Management Area
*Column fipos   fipos  char(14)  Commitment Item
*Column fincode   bp_geber  char(10)  Fund
*Column ficpos   fipos  char(14)  Commitment Item
*Column vbeln   vbeln_va  char(10)  Sales Document
*Column posnr   posnr_va  numc(6)  Sales Document Item
*Column aufnr   aufnr  char(12)  Order Number
*Column aufpl   co_aufpl  numc(10)  Routing number of operations in the order
*Column atinn   atinn  numc(10)  Internal characteristic
*Column atwrt   atwrt  char(70)  Characteristic Value
*Column layvr   layvar  char(10)  Layout
*Column sortf   layposnr  numc(10)  Layout area number
*Column ebeln   ebeln  char(10)  Purchasing Document Number
*Column ebelp   ebelp  numc(5)  Item Number of Purchasing Document
*Column banfn   banfn  char(10)  Purchase Requisition Number
*Column bnfpo   bnfpo  numc(5)  Item number of purchase requisition
*Column partner   bu_partner  char(10)  Business Partner Number
*Column partner_guid   bu_partner_guid  raw(16)  Business Partner GUID
*Column budget_pd   fm_budget_period  char(10)  Budget Period
*Column xfeld   xfeld  char(1)  Checkbox
*Column bpl_pnguid   pvs_pnguid_ext  char(32)  CHAR32 GUID for iPPE Node with Conversion
*Column qmnum   qmnum  char(12)  Notification Number
*Column fenum   lfndr  numc(4)  Sequence Number
*Column equnr   equnr  char(18)  Equipment Number
*Column tplnr   tplnr  char(30)  Functional Location
*Column fictr   fm_fictr  char(16)  Funds Center
*Column katalogart   qkatart  char(1)  Catalog
*Column auswahlmge   qauswahlmg  char(8)  Selected Set
*Column codegruppe   qcodegrp  char(8)  Code Group
*Column zaehler   qzaehler  char(4)  Plant for the Master Inspection Characteristic
*Column mkmnr   qmerknr  char(8)  Master Inspection Characteristic
*Column pmtnr   qpmethode  char(8)  Inspection Method
*Column qversion   qversnrpm  char(6)  Version Number of Inspection Method
*Column kante   kante  char(18)  Number of the link between two technical objects
*Column trpnr   trpnr  char(30)  Reference functional location
*Column sfhnr   sfhnr  char(18)  Production resources and tools
*Column plnty   plnty  char(1)  Task List Type
*Column plnnr   plnnr  char(8)  Key for Task List Group
*Column plnal   plnal  char(2)  Group Counter
*Column stdty   cn_plnty  char(1)  Standard network type
*Column stdnr   cn_plnnr  char(8)  Standard network number
*Column stdal   cn_plnal  char(2)  Alternative to a standard network
*Column kappl   kappl  char(2)  Application
*Column frgsx   frgsx  char(2)  Release Strategy
*Column prnam   im_prnam  char(8)  Investment program name
*Column posid   im_posid  char(24)  Identification for an investment program position
*Column locnr   locnr  char(10)  Customer Number for Plant
*Column abtnr   abtnr  char(4)  Department number
*Column stlty   stlty  char(1)  BOM category
*Column stlnr   stnum  char(8)  Bill of Material
*Column clszu   cs_clszu  numc(8)  Classification number
*Column knumh   knumh  char(10)  Number of Condition Record
*Column plnkn   plnkn  numc(8)  Number of the Task List Node
*Column point   imrc_point  char(12)  Measuring Point
*Column mganr   mganr  char(20)  Master warranty number
*Column posnm   posnm  numc(6)  Warranty item number
*Column poshivers   fm_hivers  char(10)  FIFM: Hierarchy Version
*Column bedae   bedae  char(4)  Requirements type
*Column versb   versb  char(2)  Version Number for Independent Requirements
*Column pbdnr   pbdnr  char(10)  Requirements Plan
*Column pdatu   dat01  dats(8)  Delivery/order finish date
*Column aplzl   co_aplzl  numc(8)  General counter for order
*Column mblnr   mblnr  char(10)  Number of Material Document
*Column mjahr   mjahr  numc(4)  Material Document Year
*Column zeile   mblpo  numc(4)  Item in Material Document
*Column obknr   objknr  int8(19)  Object list number
*Column recn   eserecn  numc(20)  Sequential Number of Data Record
*Column actn   eseactn  numc(20)  Sequential Number of the Change State
*Column pblnr   oif_pblnr  char(10)  Business location identifier (IS-Oil MRN)
*Column asort   asort  char(10)  Assortment
*Column kzwsm   kzwso  char(1)  Units of measure usage
*Column spec_no   spec_no  char(10)  Number of a Set of Model Service Specifications
*Column ddi_id   cviddiid  numc(20)  Initial order ID for document distribution
*Column bzobj   ck_obj  char(1)  Reference Object
*Column kalnr   ck_kalnr  numc(12)  Cost Estimate Number for Cost Est. w/o Qty Structure
*Column kalka   ck_kalka  char(2)  Costing Type
*Column kadky   ck_kadky  dats(8)  Costing Date (Key)
*Column tvers   ck_tvers  numc(2)  Costing Version
*Column bwvar   ck_bwvar  char(3)  Valuation Variant in Costing
*Column kkzma   ck_kkzma  char(1)  Costs Entered Manually in Additive or Automatic Cost Est.
*Column model_val   cki_modelinstance  numc(15)  Costing Model: Model Instance
*Column dokob   dokob  char(10)  Linked SAP Object
*Column obzae   obzae  numc(4)  Counter key
*Column gntyp   gntyp  char(1)  Permit Category
*Column pmsog   pmsog  char(10)  Permit Key
*Column longtext_id   cllongtext_id  char(32)  Copy of DE LONGTEXT_ID of DMS with Changed Domain
*Column fipex   fm_fipex  char(24)  Commitment Item
*Column ranl   vvranlw  char(13)  Security Class ID Number
*Column vgbel   vgbel  char(10)  Document Number of Reference Document
*Column vgpos   vgpos  numc(6)  Item number of the reference item
*Column vgtyp   vbtypl  char(4)  SD Document Category
*Column vgsys   vglogsys  char(10)  Logical System in the Preceding Document
*Column bicselvariant   bicselvariant  char(14)  BIC - Selection Variant
*Column sealnr   d_sealnr_in_app  char(20)  Internal Seal Number
*Column date_to   datbi  dats(8)  Valid To Date
*Column seqnr   d_seqnr_in_app  numc(4)  Sequence Number
*Column cu_id   /cum/cu_id  char(40)  CU: Compatible Unit ID
*Column cuguid   guid_32  char(32)  GUID in 'CHAR' Format in Uppercase
*Column plvar   plvar  char(2)  Plan Version
*Column otype   otype  char(2)  Object Type
*Column objid   hrobjid  numc(8)  Object ID
*Column vkorg   vkorg  char(4)  Sales Organization
*Column vtweg   vtweg  char(2)  Distribution Channel
*Column matkl   matkl  char(9)  Material Group
*Column warpl   warpl  char(12)  Maintenance Plan
*Column claim   icl_claim_cnv  char(17)  Number of Claim
*Column ccevent   icl_ccevent  char(17)  Claim Bundle
*Column servcatid   icl_servcatid  char(10)  ID of a Benefits, Services and Fees Catalog
*Column pnguid   pvs_pnguid_ext  char(32)  CHAR32 GUID for iPPE Node with Conversion
*Column pvguid   pvs_pvguid_ext  char(32)  CHAR32 GUID for iPPE Variant with Conversion
*Column aennr2   pvs_aennr  char(12)  Change Number in iPPE
*Column outid   jito_outid  numc(10)  Call Key
*Column outpo   jito_outpo  numc(10)  Components Group Number JIT Outbound
*Column jcpos   jito_jcpos  numc(4)  Call Item
*Column refty   jit_refty  char(2)  Type of Reference Number
*Column j_3gkatal   j_3gkatnrc  char(30)  Number in Catalog
*Column j_3gausgj   j_3gausgj  char(4)  Edition Year
*Column j_3gkatnrc   j_3gkatnrc  char(30)  Number in Catalog
*Column j_3gtplkz   j_3gtplkz  char(5)  Catalog Code
*Column j_3glfdnr   j_3glfdnr4  numc(4)  Sequence Number
*Column j_3gkatnrs   j_3gkatnrc  char(30)  Number in Catalog
*Column j_3gdatbi   datbi  dats(8)  Valid To Date
*Column j_3gposnr   j_3gposnr  numc(5)  Item Number
*Column j_3gkatnrp   j_3gkatnrc  char(30)  Number in Catalog
*Column j_3gobtxt   obtxt  char(50)  Text for the Depreciation Trace Object
*Column j_3gstlnr   j_3gmernri  numc(10)  Internal Characteristic Number
*Column j_3gposnri   j_3gposnri  numc(4)  Internal Item Number
*Column ppv_id   rcpe_ppv_id  numc(20)  Process Parameter Value Assignment
*Column chstcnt   rcpe_pp_chstcnt  numc(20)  Change State Counter for Process Parameter Value Assignment
*Column cla_objno   rmsle_cla_objno_ext  char(32)  Key of the Label Set to Be Classified
*Column line_seqno   char6  char(6)  Character field of length 6
*Column trialid   rmxte_trialid  char(12)  Trial Number
*Column vguid   vlc_guid  char(22)  Vehicle GUID (Globally Unique IDentifier)
*Column tkonn   tkonn  char(10)  Trading Contract
*Column tposn   tposn  numc(6)  Item Number of Trading Contract
*Column cr_db_key   /plmb/cr_guid  raw(16)  Object GUID
*Column ecr_guid   /plmb/ecr_guid  char(32)  Engineering Record GUID (Technical Key)
*Column rcp_guid   /plmb/rcp_char_guid  char(32)  Common Recipe GUID
*Column pp_val_guid   /plmb/rpr_pp_char_guid  char(32)  Common Recipe Process Parameter GUID of Type 'Character'
*Column pe_guid   /plmb/rpr_pe_guid_char  char(32)  Process GUID
*Column eqr_guid   /plmb/rpr_char_guid  char(32)  Common Recipe Process GUID of Type 'Character'
*Column matid   /sapapo/prdid  char(22)  Product
*Column version   /sapapo/version  char(10)  Version (Batch)
*Column resuid   /sapapo/resuid  char(22)  Internal Key (GUID) of a Resource
*Column component_id   /sapapo/guid  char(22)  Any GUID, Independent of Object
*Column object_typ   /sapapo/mc01obj_typ  char(2)  Type of Object in Container
*Column condition_id   /sapapo/mc01cond_id  char(22)  UUID for Rules Defined via Characteristics
*Column obj_usage   /sapapo/mc01obj_typ  char(2)  Type of Object in Container
*Column line_no   /sapapo/mc01_line_no  numc(10)  Line Number for Identification of Condition
*Column infnr   infnr  char(10)  Number of purchasing info record
*Column itemid   /scdl/dl_itemid  raw(16)  Item ID
*Column doccat   /scdl/dl_doccat  char(3)  Document Category
*Column dfscapabilityobjectid   dfs_coid  numc(5)  Capability Object ID
*Column missionessentialtaskid   dfs_metaskid  numc(5)  ID of Mission Essential Task
*Column dfscapabilitystatementid   dfs_csid  numc(5)  Capability Statement ID
*Column flxblmatlplngobjectid   dfs_fmpoid  char(40)  Flexible Material Planning Object
*Column flxblmatlplngobjvariantid   dfs_variantid  numc(6)  Variant ID
*Column flxblmatlplngobjvariantuuid   dfs_variantuuid  raw(16)  Variant UUID
*Column dfsscenarioid   dfs_scenid  numc(5)  Defense Scenario ID
*Column dfsscenarioaltvid   dfs_altvid  numc(2)  Alternative ID for Scenario
*Column wbeln   wbeln  char(10)  Document Number of Inbound Invoice
