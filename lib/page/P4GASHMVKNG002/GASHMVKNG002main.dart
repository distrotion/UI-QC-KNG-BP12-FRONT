import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/04-01-GASHMVKNG002.dart';
import '../../bloc/BlocEvent/04-02-TrickGASHMVKNG002.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/cubit/NotificationEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../widget/QCWIDGET/W1SINGLESHOT/SINGLESHOTwidget.dart';
import '../../widget/QCWIDGET/W2MULTISHOT/MULTISHOTwidget.dart';
import '../../widget/common/Loading.dart';
import '../../widget/onlyINqcui/popup.dart';
import '../P1FIRSTUI/FIRSTuiVAR.dart';
import '../page1.dart';
import 'GASHMVKNG002var.dart';

class MICROVICKER_GASHMVKNG002main extends StatelessWidget {
  MICROVICKER_GASHMVKNG002main({Key? key, this.data}) : super(key: key);
  GASHMVKNG002SCHEMA? data;
  @override
  Widget build(BuildContext context) {
    return _TRICKER_GASHMVKNG002_BlocBuffer(
      data: data,
    );
  }
}

class _TRICKER_GASHMVKNG002_BlocBuffer extends StatelessWidget {
  _TRICKER_GASHMVKNG002_BlocBuffer({
    Key? key,
    this.data,
  }) : super(key: key);
  GASHMVKNG002SCHEMA? data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TRICKER_GASHMVKNG002_Bloc(),
        child: BlocBuilder<TRICKER_GASHMVKNG002_Bloc, String>(
          builder: (context, trick) {
            return ROCKWELL_GASHMVKNG002body(data: data);
          },
        ));
  }
}

class ROCKWELL_GASHMVKNG002body extends StatefulWidget {
  ROCKWELL_GASHMVKNG002body({Key? key, this.data}) : super(key: key);
  GASHMVKNG002SCHEMA? data;

  @override
  State<ROCKWELL_GASHMVKNG002body> createState() =>
      _ROCKWELL_GASHMVKNG002bodyState();
}

class _ROCKWELL_GASHMVKNG002bodyState extends State<ROCKWELL_GASHMVKNG002body> {
  @override
  void initState() {
    super.initState();
    context.read<GASHMVKNG002_Bloc>().add(GASHMVKNG002_READ());
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data?.UPDATE == 'OK') {
      setState(() {
        GASHMVKNG002var.PO = widget.data?.PO ?? '';
        GASHMVKNG002var.CP = widget.data?.CP ?? '';
        GASHMVKNG002var.QTY = widget.data?.QTY ?? '';
        GASHMVKNG002var.PROCESS = widget.data?.PROCESS ?? '';
        GASHMVKNG002var.CUSLOT = widget.data?.CUSLOT ?? '';
        GASHMVKNG002var.TPKLOT = widget.data?.TPKLOT ?? '';
        GASHMVKNG002var.FG = widget.data?.FG ?? '';
        GASHMVKNG002var.CUSTOMER = widget.data?.CUSTOMER ?? '';
        GASHMVKNG002var.PART = widget.data?.PART ?? '';
        GASHMVKNG002var.PARTNAME = widget.data?.PARTNAME ?? '';
        GASHMVKNG002var.MATERIAL = widget.data?.MATERIAL ?? '';
        //
        GASHMVKNG002var.ItemPick = widget.data?.ItemPick ?? [''];
        GASHMVKNG002var.PCS = widget.data?.PCS ?? '';
        // GASHMVKNG002var.PCS = '10';
        GASHMVKNG002var.PCSleft = widget.data?.PCSleft ?? '';
        // GASHMVKNG002var.PCSleft = '10';
        GASHMVKNG002var.POINTs = widget.data?.POINTs ?? '';
        // GASHMVKNG002var.POINTs = '10';
        // if (GASHMVKNG002var.ItemPickSELECT != "") {
        //   //
        //   if (GASHMVKNG002var.POINTs == "") {
        //     //
        //     GASHMVKNG002var.POINTs == "0";
        //   }
        // }
        GASHMVKNG002var.UNIT = widget.data?.UNIT ?? '';
        // GASHMVKNG002var.UNIT = 'pcs/lots';
        GASHMVKNG002var.INTERSEC = widget.data?.INTERSEC ?? '';
        //
        GASHMVKNG002var.RESULTFORMAT = widget.data?.RESULTFORMAT ?? '';
        GASHMVKNG002var.GRAPHTYPE = widget.data?.GRAPHTYPE ?? '';
        GASHMVKNG002var.GAP = widget.data?.GAP ?? '';
        GASHMVKNG002var.GAPnameList = widget.data?.GAPnameList ?? [''];
        //
        GASHMVKNG002var.preview = widget.data?.preview ?? [];
        GASHMVKNG002var.confirmdata = widget.data?.confirmdata ?? [];
        GASHMVKNG002var.ITEMleftUNIT = widget.data?.ITEMleftUNIT ?? [];
        GASHMVKNG002var.ITEMleftVALUE = widget.data?.ITEMleftVALUE ?? [];

        GASHMVKNG002var.PICs = widget.data?.Pic ?? '';

        if (GASHMVKNG002var.PCSleft == '0') {
          BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
              "ITEM STATUS", "COMPLETE DATA", enumNotificationlist.Success);
        }

        widget.data?.UPDATE = '-';
      });

      Timer timer = Timer(const Duration(seconds: 1), () {
        context.read<GASHMVKNG002_Bloc>().add(GASHMVKNG002_READ());
      });
      GASHMVKNG002var.DHtimer = timer;
    }
    return MULTISHOTmain(
      //------ Left
      LABEL: "GAS-HMV-002",
      PO: GASHMVKNG002var.PO,
      CP: GASHMVKNG002var.CP,
      QTY: GASHMVKNG002var.QTY,
      PROCESS: GASHMVKNG002var.PROCESS,
      CUSLOT: GASHMVKNG002var.CUSLOT,
      TPKLOT: GASHMVKNG002var.TPKLOT,
      FG: GASHMVKNG002var.FG,
      CUSTOMER: GASHMVKNG002var.CUSTOMER,
      PART: GASHMVKNG002var.PART,
      PARTNAME: GASHMVKNG002var.PARTNAME,
      MATERIAL: GASHMVKNG002var.MATERIAL,
      //------- Top
      ItemPickres: (v) {
        print(v);
        GASHMVKNG002var.ItemPickSELECT = v;
        //
        context
            .read<TRICKER_GASHMVKNG002_Bloc>()
            .add(TRICKER_GASHMVKNG002geteachITEM());
      },
      ItemPick: GASHMVKNG002var.ItemPick,
      PCS: GASHMVKNG002var.PCS,
      PCSleft: GASHMVKNG002var.PCSleft,
      POINTs: GASHMVKNG002var.POINTs,
      UNIT: GASHMVKNG002var.UNIT,
      INTERSEC: GASHMVKNG002var.INTERSEC,
      RESULTFORMAT: GASHMVKNG002var.RESULTFORMAT,
      Ghtype: GASHMVKNG002var.GRAPHTYPE,
      GAP: GASHMVKNG002var.GAP,
      GAPnameList: GASHMVKNG002var.GAPnameList,
      GAPname: GASHMVKNG002var.GAPname,
      GAPnamePick: (v) {
        GASHMVKNG002var.GAPname = v;
        context
            .read<TRICKER_GASHMVKNG002_Bloc>()
            .add(TRICKER_GASHMVKNG002geteachGRAPH());
      },
      //------- Bottom
      DATA1STR: "Surface",
      DATA2STR: "Compound",
      DATA3STR: "TRIM",
      DATA1: (v) {
        context
            .read<TRICKER_GASHMVKNG002_Bloc>()
            .add(TRICKER_GASHMVKNG002confirmdata1());
      },
      DATA2: (v) {
        context
            .read<TRICKER_GASHMVKNG002_Bloc>()
            .add(TRICKER_GASHMVKNG002confirmdata2());
      },
      DATA3: (v) {
        context
            .read<TRICKER_GASHMVKNG002_Bloc>()
            .add(TRICKER_GASHMVKNG002confirmdata());
      },
      FINISH: (v) {
        if (GASHMVKNG002var.PCS != '' &&
            GASHMVKNG002var.POINTs != '' &&
            GASHMVKNG002var.ItemPickSELECT != '') {
          if (int.parse(GASHMVKNG002var.POINTs) ==
              GASHMVKNG002var.confirmdata.length) {
            if (int.parse(GASHMVKNG002var.PCSleft) > 0) {
              onLoadingFAKE(context);
              context
                  .read<TRICKER_GASHMVKNG002_Bloc>()
                  .add(TRICKER_GASHMVKNG002FINISH());
            }
          } else {
            WORNINGpop(context, "POINTs are not complete");
          }
        } else {
          WORNINGpop(context, "Please select item");
        }
      },
      preview: GASHMVKNG002var.preview,
      confirmdata: GASHMVKNG002var.confirmdata.reversed.toList(),
      //------- Right
      CLEAR: (v) {
        context
            .read<TRICKER_GASHMVKNG002_Bloc>()
            .add(TRICKER_GASHMVKNG002CLEAR());
      },
      BACKPAGE: (v) {
        GASHMVKNG002var.DHtimer.cancel();
        FIRSTUI.SEARCH = FIRSTUI.POACTIVE;
        GASHMVKNG002var.ItemPickSELECT = '';
        context
            .read<TRICKER_GASHMVKNG002_Bloc>()
            .add(TRICKER_GASHMVKNG002SETZERO());
        CuPage = Page1();
        MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
      },
      RESETVALUE: (v) {
        context
            .read<TRICKER_GASHMVKNG002_Bloc>()
            .add(TRICKER_GASHMVKNG002RESETVALUE());
      },
      ITEMleftUNIT: GASHMVKNG002var.ITEMleftUNIT,
      ITEMleftVALUE: GASHMVKNG002var.ITEMleftVALUE,
      PICB64: GASHMVKNG002var.PICs,
    );
  }
}
