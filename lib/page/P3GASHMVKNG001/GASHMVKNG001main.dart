import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/03-01-GASHMVKNG001.dart';
import '../../bloc/BlocEvent/03-02-TrickGASHMVKNG001.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/cubit/NotificationEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../widget/QCWIDGET/W1SINGLESHOT/SINGLESHOTwidget.dart';
import '../../widget/QCWIDGET/W2MULTISHOT/MULTISHOTwidget.dart';
import '../../widget/QCWIDGET/consolelayout.dart';
import '../../widget/common/Loading.dart';
import '../../widget/onlyINqcui/popup.dart';
import '../P1FIRSTUI/FIRSTuiVAR.dart';
import '../page1.dart';
import 'GASHMVKNG001var.dart';

class MICROVICKER_GASHMVKNG001main extends StatelessWidget {
  MICROVICKER_GASHMVKNG001main({Key? key, this.data}) : super(key: key);
  GASHMVKNG001SCHEMA? data;
  @override
  Widget build(BuildContext context) {
    return _TRICKER_GASHMVKNG001_BlocBuffer(
      data: data,
    );
  }
}

class _TRICKER_GASHMVKNG001_BlocBuffer extends StatelessWidget {
  _TRICKER_GASHMVKNG001_BlocBuffer({
    Key? key,
    this.data,
  }) : super(key: key);
  GASHMVKNG001SCHEMA? data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TRICKER_GASHMVKNG001_Bloc(),
        child: BlocBuilder<TRICKER_GASHMVKNG001_Bloc, String>(
          builder: (context, trick) {
            return ROCKWELL_GASHMVKNG001body(data: data);
          },
        ));
  }
}

class ROCKWELL_GASHMVKNG001body extends StatefulWidget {
  ROCKWELL_GASHMVKNG001body({Key? key, this.data}) : super(key: key);
  GASHMVKNG001SCHEMA? data;

  @override
  State<ROCKWELL_GASHMVKNG001body> createState() =>
      _ROCKWELL_GASHMVKNG001bodyState();
}

class _ROCKWELL_GASHMVKNG001bodyState extends State<ROCKWELL_GASHMVKNG001body> {
  @override
  void initState() {
    super.initState();
    context.read<GASHMVKNG001_Bloc>().add(GASHMVKNG001_READ());
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data?.UPDATE == 'OK') {
      setState(() {
        GASHMVKNG001var.PO = widget.data?.PO ?? '';
        GASHMVKNG001var.CP = widget.data?.CP ?? '';
        GASHMVKNG001var.QTY = widget.data?.QTY ?? '';
        GASHMVKNG001var.PROCESS = widget.data?.PROCESS ?? '';
        GASHMVKNG001var.CUSLOT = widget.data?.CUSLOT ?? '';
        GASHMVKNG001var.TPKLOT = widget.data?.TPKLOT ?? '';
        GASHMVKNG001var.FG = widget.data?.FG ?? '';
        GASHMVKNG001var.CUSTOMER = widget.data?.CUSTOMER ?? '';
        GASHMVKNG001var.PART = widget.data?.PART ?? '';
        GASHMVKNG001var.PARTNAME = widget.data?.PARTNAME ?? '';
        GASHMVKNG001var.MATERIAL = widget.data?.MATERIAL ?? '';
        //
        GASHMVKNG001var.ItemPick = widget.data?.ItemPick ?? [''];
        GASHMVKNG001var.PCS = widget.data?.PCS ?? '';
        // GASHMVKNG001var.PCS = '10';
        GASHMVKNG001var.PCSleft = widget.data?.PCSleft ?? '';
        // GASHMVKNG001var.PCSleft = '10';
        GASHMVKNG001var.POINTs = widget.data?.POINTs ?? '';
        // GASHMVKNG001var.POINTs = '10';
        // if (GASHMVKNG001var.ItemPickSELECT != "") {
        //   //
        //   if (GASHMVKNG001var.POINTs == "") {
        //     //
        //     GASHMVKNG001var.POINTs == "0";
        //   }
        // }
        GASHMVKNG001var.UNIT = widget.data?.UNIT ?? '';
        // GASHMVKNG001var.UNIT = 'pcs/lots';
        GASHMVKNG001var.INTERSEC = widget.data?.INTERSEC ?? '';
        //
        GASHMVKNG001var.RESULTFORMAT = widget.data?.RESULTFORMAT ?? '';
        GASHMVKNG001var.GRAPHTYPE = widget.data?.GRAPHTYPE ?? '';
        GASHMVKNG001var.GAP = widget.data?.GAP ?? '';
        GASHMVKNG001var.GAPnameList = widget.data?.GAPnameList ?? [''];
        //
        GASHMVKNG001var.preview = widget.data?.preview ?? [];
        GASHMVKNG001var.confirmdata = widget.data?.confirmdata ?? [];
        GASHMVKNG001var.ITEMleftUNIT = widget.data?.ITEMleftUNIT ?? [];
        GASHMVKNG001var.ITEMleftVALUE = widget.data?.ITEMleftVALUE ?? [];
        //

        GASHMVKNG001var.PICs = widget.data?.Pic ?? '';

        if (GASHMVKNG001var.PCSleft == '0') {
          BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
              "ITEM STATUS", "COMPLETE DATA", enumNotificationlist.Success);
        }

        widget.data?.UPDATE = '-';
      });

      Timer timer = Timer(const Duration(seconds: 1), () {
        context.read<GASHMVKNG001_Bloc>().add(GASHMVKNG001_READ());
      });
      GASHMVKNG001var.DHtimer = timer;
    }

    return MULTISHOTmain(
      //------ Left
      LABEL: "GAS-HMVKNG-001",
      PO: GASHMVKNG001var.PO,
      CP: GASHMVKNG001var.CP,
      QTY: GASHMVKNG001var.QTY,
      PROCESS: GASHMVKNG001var.PROCESS,
      CUSLOT: GASHMVKNG001var.CUSLOT,
      TPKLOT: GASHMVKNG001var.TPKLOT,
      FG: GASHMVKNG001var.FG,
      CUSTOMER: GASHMVKNG001var.CUSTOMER,
      PART: GASHMVKNG001var.PART,
      PARTNAME: GASHMVKNG001var.PARTNAME,
      MATERIAL: GASHMVKNG001var.MATERIAL,
      //------- Top
      ItemPickres: (v) {
        print(v);
        GASHMVKNG001var.ItemPickSELECT = v;
        //
        context
            .read<TRICKER_GASHMVKNG001_Bloc>()
            .add(TRICKER_GASHMVKNG001geteachITEM());
      },
      ItemPick: GASHMVKNG001var.ItemPick,
      PCS: GASHMVKNG001var.PCS,
      PCSleft: GASHMVKNG001var.PCSleft,
      POINTs: GASHMVKNG001var.POINTs,
      UNIT: GASHMVKNG001var.UNIT,
      INTERSEC: GASHMVKNG001var.INTERSEC,
      RESULTFORMAT: GASHMVKNG001var.RESULTFORMAT,
      Ghtype: GASHMVKNG001var.GRAPHTYPE,
      GAP: GASHMVKNG001var.GAP,
      GAPnameList: GASHMVKNG001var.GAPnameList,
      GAPname: GASHMVKNG001var.GAPname,
      GAPnamePick: (v) {
        GASHMVKNG001var.GAPname = v;
        context
            .read<TRICKER_GASHMVKNG001_Bloc>()
            .add(TRICKER_GASHMVKNG001geteachGRAPH());
      },
      //------- Bottom
      DATA1STR: "Surface",
      DATA2STR: "Compound",
      DATA3STR: "TRIM",
      DATA1: (v) {
        context
            .read<TRICKER_GASHMVKNG001_Bloc>()
            .add(TRICKER_GASHMVKNG001confirmdata1());
      },

      DATA2: (v) {
        context
            .read<TRICKER_GASHMVKNG001_Bloc>()
            .add(TRICKER_GASHMVKNG001confirmdata2());
      },

      DATA3: (v) {
        context
            .read<TRICKER_GASHMVKNG001_Bloc>()
            .add(TRICKER_GASHMVKNG001confirmdata());
      },
      FINISH: (v) {
        if (GASHMVKNG001var.PCS != '' &&
            GASHMVKNG001var.POINTs != '' &&
            GASHMVKNG001var.ItemPickSELECT != '') {
          if (int.parse(GASHMVKNG001var.POINTs) ==
              GASHMVKNG001var.confirmdata.length) {
            if (int.parse(GASHMVKNG001var.PCSleft) > 0) {
              onLoadingFAKE(context);
              context
                  .read<TRICKER_GASHMVKNG001_Bloc>()
                  .add(TRICKER_GASHMVKNG001FINISH());
            }
          } else {
            WORNINGpop(context, "POINTs are not complete");
          }
        } else {
          WORNINGpop(context, "Please select item");
        }
      },
      preview: GASHMVKNG001var.preview,

      confirmdata: GASHMVKNG001var.confirmdata.reversed.toList(),
      //------- Right
      CLEAR: (v) {
        context
            .read<TRICKER_GASHMVKNG001_Bloc>()
            .add(TRICKER_GASHMVKNG001CLEAR());
      },
      BACKPAGE: (v) {
        GASHMVKNG001var.DHtimer.cancel();
        FIRSTUI.SEARCH = FIRSTUI.POACTIVE;
        GASHMVKNG001var.ItemPickSELECT = '';
        context
            .read<TRICKER_GASHMVKNG001_Bloc>()
            .add(TRICKER_GASHMVKNG001SETZERO());
        CuPage = Page1();
        MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
      },
      RESETVALUE: (v) {
        context
            .read<TRICKER_GASHMVKNG001_Bloc>()
            .add(TRICKER_GASHMVKNG001RESETVALUE());
      },
      ITEMleftUNIT: GASHMVKNG001var.ITEMleftUNIT,
      ITEMleftVALUE: GASHMVKNG001var.ITEMleftVALUE,
      //
      PICB64: GASHMVKNG001var.PICs,
    );
  }
}
