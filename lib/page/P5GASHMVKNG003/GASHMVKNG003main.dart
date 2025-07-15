import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/05-01-GASHMVKNG003.dart';
import '../../bloc/BlocEvent/05-02-TrickGASHMVKNG003.dart';
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
import 'GASHMVKNG003var.dart';

class MICROVICKER_GASHMVKNG003main extends StatelessWidget {
  MICROVICKER_GASHMVKNG003main({Key? key, this.data}) : super(key: key);
  GASHMVKNG003SCHEMA? data;
  @override
  Widget build(BuildContext context) {
    return _TRICKER_GASHMVKNG003_BlocBuffer(
      data: data,
    );
  }
}

class _TRICKER_GASHMVKNG003_BlocBuffer extends StatelessWidget {
  _TRICKER_GASHMVKNG003_BlocBuffer({
    Key? key,
    this.data,
  }) : super(key: key);
  GASHMVKNG003SCHEMA? data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TRICKER_GASHMVKNG003_Bloc(),
        child: BlocBuilder<TRICKER_GASHMVKNG003_Bloc, String>(
          builder: (context, trick) {
            return ROCKWELL_GASHMVKNG003body(data: data);
          },
        ));
  }
}

class ROCKWELL_GASHMVKNG003body extends StatefulWidget {
  ROCKWELL_GASHMVKNG003body({Key? key, this.data}) : super(key: key);
  GASHMVKNG003SCHEMA? data;

  @override
  State<ROCKWELL_GASHMVKNG003body> createState() =>
      _ROCKWELL_GASHMVKNG003bodyState();
}

class _ROCKWELL_GASHMVKNG003bodyState extends State<ROCKWELL_GASHMVKNG003body> {
  @override
  void initState() {
    super.initState();
    context.read<GASHMVKNG003_Bloc>().add(GASHMVKNG003_READ());
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data?.UPDATE == 'OK') {
      setState(() {
        GASHMVKNG003var.PO = widget.data?.PO ?? '';
        GASHMVKNG003var.CP = widget.data?.CP ?? '';
        GASHMVKNG003var.QTY = widget.data?.QTY ?? '';
        GASHMVKNG003var.PROCESS = widget.data?.PROCESS ?? '';
        GASHMVKNG003var.CUSLOT = widget.data?.CUSLOT ?? '';
        GASHMVKNG003var.TPKLOT = widget.data?.TPKLOT ?? '';
        GASHMVKNG003var.FG = widget.data?.FG ?? '';
        GASHMVKNG003var.CUSTOMER = widget.data?.CUSTOMER ?? '';
        GASHMVKNG003var.PART = widget.data?.PART ?? '';
        GASHMVKNG003var.PARTNAME = widget.data?.PARTNAME ?? '';
        GASHMVKNG003var.MATERIAL = widget.data?.MATERIAL ?? '';
        //
        GASHMVKNG003var.ItemPick = widget.data?.ItemPick ?? [''];
        GASHMVKNG003var.PCS = widget.data?.PCS ?? '';
        // GASHMVKNG003var.PCS = '10';
        GASHMVKNG003var.PCSleft = widget.data?.PCSleft ?? '';
        // GASHMVKNG003var.PCSleft = '10';
        GASHMVKNG003var.POINTs = widget.data?.POINTs ?? '';
        // GASHMVKNG003var.POINTs = '10';
        // if (GASHMVKNG003var.ItemPickSELECT != "") {
        //   //
        //   if (GASHMVKNG003var.POINTs == "") {
        //     //
        //     GASHMVKNG003var.POINTs == "0";
        //   }
        // }
        GASHMVKNG003var.UNIT = widget.data?.UNIT ?? '';
        // GASHMVKNG003var.UNIT = 'pcs/lots';
        GASHMVKNG003var.INTERSEC = widget.data?.INTERSEC ?? '';
        //
        GASHMVKNG003var.RESULTFORMAT = widget.data?.RESULTFORMAT ?? '';
        GASHMVKNG003var.GRAPHTYPE = widget.data?.GRAPHTYPE ?? '';
        GASHMVKNG003var.GAP = widget.data?.GAP ?? '';
        GASHMVKNG003var.GAPnameList = widget.data?.GAPnameList ?? [''];
        //
        GASHMVKNG003var.preview = widget.data?.preview ?? [];
        GASHMVKNG003var.confirmdata = widget.data?.confirmdata ?? [];
        GASHMVKNG003var.ITEMleftUNIT = widget.data?.ITEMleftUNIT ?? [];
        GASHMVKNG003var.ITEMleftVALUE = widget.data?.ITEMleftVALUE ?? [];

        GASHMVKNG003var.PICs = widget.data?.Pic ?? '';

        if (GASHMVKNG003var.PCSleft == '0') {
          BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
              "ITEM STATUS", "COMPLETE DATA", enumNotificationlist.Success);
        }

        widget.data?.UPDATE = '-';
      });

      Timer timer = Timer(const Duration(seconds: 1), () {
        context.read<GASHMVKNG003_Bloc>().add(GASHMVKNG003_READ());
      });
      GASHMVKNG003var.DHtimer = timer;
    }
    return MULTISHOTmain(
      //------ Left
      LABEL: "GAS-HMV-003",
      PO: GASHMVKNG003var.PO,
      CP: GASHMVKNG003var.CP,
      QTY: GASHMVKNG003var.QTY,
      PROCESS: GASHMVKNG003var.PROCESS,
      CUSLOT: GASHMVKNG003var.CUSLOT,
      TPKLOT: GASHMVKNG003var.TPKLOT,
      FG: GASHMVKNG003var.FG,
      CUSTOMER: GASHMVKNG003var.CUSTOMER,
      PART: GASHMVKNG003var.PART,
      PARTNAME: GASHMVKNG003var.PARTNAME,
      MATERIAL: GASHMVKNG003var.MATERIAL,
      //------- Top
      ItemPickres: (v) {
        print(v);
        GASHMVKNG003var.ItemPickSELECT = v;
        //
        context
            .read<TRICKER_GASHMVKNG003_Bloc>()
            .add(TRICKER_GASHMVKNG003geteachITEM());
      },
      ItemPick: GASHMVKNG003var.ItemPick,
      PCS: GASHMVKNG003var.PCS,
      PCSleft: GASHMVKNG003var.PCSleft,
      POINTs: GASHMVKNG003var.POINTs,
      UNIT: GASHMVKNG003var.UNIT,
      INTERSEC: GASHMVKNG003var.INTERSEC,
      RESULTFORMAT: GASHMVKNG003var.RESULTFORMAT,
      Ghtype: GASHMVKNG003var.GRAPHTYPE,
      GAP: GASHMVKNG003var.GAP,
      GAPnameList: GASHMVKNG003var.GAPnameList,
      GAPname: GASHMVKNG003var.GAPname,
      GAPnamePick: (v) {
        GASHMVKNG003var.GAPname = v;
        context
            .read<TRICKER_GASHMVKNG003_Bloc>()
            .add(TRICKER_GASHMVKNG003geteachGRAPH());
      },
      //------- Bottom
      DATA1STR: "Surface",
      DATA2STR: "Compound",
      DATA3STR: "TRIM",
      DATA1: (v) {
        context
            .read<TRICKER_GASHMVKNG003_Bloc>()
            .add(TRICKER_GASHMVKNG003confirmdata1());
      },
      DATA2: (v) {
        context
            .read<TRICKER_GASHMVKNG003_Bloc>()
            .add(TRICKER_GASHMVKNG003confirmdata2());
      },
      DATA3: (v) {
        // context
        //     .read<TRICKER_GASHMVKNG003_Bloc>()
        //     .add(TRICKER_GASHMVKNG003confirmdata());
      },
      FINISH: (v) {
        if (GASHMVKNG003var.PCS != '' &&
            GASHMVKNG003var.POINTs != '' &&
            GASHMVKNG003var.ItemPickSELECT != '') {
          if (int.parse(GASHMVKNG003var.POINTs) ==
              GASHMVKNG003var.confirmdata.length) {
            if (int.parse(GASHMVKNG003var.PCSleft) > 0) {
              onLoadingFAKE(context);
              context
                  .read<TRICKER_GASHMVKNG003_Bloc>()
                  .add(TRICKER_GASHMVKNG003FINISH());
            }
          } else {
            WORNINGpop(context, "POINTs are not complete");
          }
        } else {
          WORNINGpop(context, "Please select item");
        }
      },
      preview: GASHMVKNG003var.preview,
      confirmdata: GASHMVKNG003var.confirmdata.reversed.toList(),
      //------- Right
      CLEAR: (v) {
        context
            .read<TRICKER_GASHMVKNG003_Bloc>()
            .add(TRICKER_GASHMVKNG003CLEAR());
      },
      BACKPAGE: (v) {
        GASHMVKNG003var.DHtimer.cancel();
        FIRSTUI.SEARCH = FIRSTUI.POACTIVE;
        GASHMVKNG003var.ItemPickSELECT = '';
        context
            .read<TRICKER_GASHMVKNG003_Bloc>()
            .add(TRICKER_GASHMVKNG003SETZERO());
        CuPage = Page1();
        MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
      },
      RESETVALUE: (v) {
        context
            .read<TRICKER_GASHMVKNG003_Bloc>()
            .add(TRICKER_GASHMVKNG003RESETVALUE());
      },
      ITEMleftUNIT: GASHMVKNG003var.ITEMleftUNIT,
      ITEMleftVALUE: GASHMVKNG003var.ITEMleftVALUE,
      PICB64: GASHMVKNG003var.PICs,
    );
  }
}
