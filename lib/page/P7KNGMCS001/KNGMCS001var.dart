import 'dart:async';

import '../../model/model.dart';
import '../../widget/QCWIDGET/consolelayout.dart';
import '../../widget/common/imgset.dart';

class KNGMCS001var {
  static bool iscontrol = false;
  static String PO = '';
  static String CP = '';
  static String QTY = '';
  static String PROCESS = '';
  static String CUSLOT = '';
  static String TPKLOT = '';
  static String FG = '';
  static String CUSTOMER = '';
  static String PART = '';
  static String PARTNAME = '';
  static String MATERIAL = '';
  static List<String> ItemPick = [''];
  static String PCS = '';
  static String PCSleft = '';
  static String POINTs = '';
  static String UNIT = '';
  static String INTERSEC = '';
  static String RESULTFORMAT = '';
  static String GRAPHTYPE = '';
  static String GAP = '';
  static String GAPname = '';
  static String GAPnamePick = '';
  static List<String> GAPnameList = [''];
  static String APPEARANCE = '';
  static String base64pic01 = imgw;
  static String base64pic02 = imgw;
  static String base64pic03 = imgw;
  static String base64pic04 = imgw;
  static String base64pic05 = imgw;
  static String base64pic06 = imgw;
  static String base64pic07 = imgw;
  static String base64pic08 = imgw;
  static String base64pic09 = imgw;
  static String base64pic10 = imgw;
  static String base64pic11 = imgw;
  static String base64pic12 = imgw;

  static String base64pic01data = '';
  static String base64pic02data = '';
  static String base64pic03data = '';
  static String base64pic04data = '';
  static String base64pic05data = '';
  static String base64pic06data = '';
  static String base64pic07data = '';
  static String base64pic08data = '';
  static String base64pic09data = '';
  static String base64pic10data = '';
  static String base64pic11data = '';
  static String base64pic12data = '';

  static List<INSDATA> preview = [];
  static List<INSDATA> confirmdata = [];
  static List<INSDATA> ITEMleftUNIT = [];
  static List<INSDATA> ITEMleftVALUE = [];
  static late Timer DHtimer;

  static String selectINS = '0';

  //
  static String ItemPickSELECT = '';
  //
  static String PICs = '';
}

class KNGMCS001SCHEMA {
  KNGMCS001SCHEMA({
    this.UPDATE = '',
    this.PO = '',
    this.CP = '',
    this.QTY = '',
    this.PROCESS = '',
    this.CUSLOT = '',
    this.TPKLOT = '',
    this.FG = '',
    this.CUSTOMER = '',
    this.PART = '',
    this.PARTNAME = '',
    this.MATERIAL = '',
    required this.ItemPick,
    required this.ItemPickcode,
    this.PCS = '',
    this.PCSleft = '',
    this.POINTs = '',
    this.UNIT = '',
    this.INTERSEC = '',
    this.RESULTFORMAT = '',
    this.GRAPHTYPE = '',
    this.GAP = '',
    this.GAPname = '',
    this.GAPnamePick = '',
    this.Pic = '',
    required this.GAPnameList,
    required this.preview,
    required this.confirmdata,
    required this.ITEMleftUNIT,
    required this.ITEMleftVALUE,
  });
  String UPDATE;
  String PO;
  String CP;
  String QTY;
  String PROCESS;
  String CUSLOT;
  String TPKLOT;
  String FG;
  String CUSTOMER;
  String PART;
  String PARTNAME;
  String MATERIAL;
  List<String> ItemPick;
  List<ITEMSET> ItemPickcode;
  String PCS;
  String PCSleft;
  String POINTs;
  String UNIT;
  String INTERSEC;
  String RESULTFORMAT;
  String GRAPHTYPE;
  String GAP;
  String GAPname;
  String GAPnamePick;
  String Pic;

  List<String> GAPnameList;
  List<INSDATA> preview;
  List<INSDATA> confirmdata;
  List<INSDATA> ITEMleftUNIT;
  List<INSDATA> ITEMleftVALUE;
}
