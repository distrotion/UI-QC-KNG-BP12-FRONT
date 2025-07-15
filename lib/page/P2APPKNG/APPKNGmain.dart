import 'dart:async';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/02-01-APPGAS12.dart';
import '../../bloc/BlocEvent/02-02-TrickAPPGAS12.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/cubit/NotificationEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../widget/QCWIDGET/W1SINGLESHOT/SINGLESHOTwidget.dart';
import '../../widget/QCWIDGET/W1SINGLESHOTAPR/SINGLESHOTAPRwidget.dart';
import '../../widget/common/Loading.dart';
import '../../widget/onlyINqcui/popup.dart';
import '../P1FIRSTUI/FIRSTuiVAR.dart';
import '../page1.dart';
import 'APPKNGvar.dart';

class APPEARANCE_APPKNGmain extends StatelessWidget {
  APPEARANCE_APPKNGmain({Key? key, this.data}) : super(key: key);
  APPKNGSCHEMA? data;
  @override
  Widget build(BuildContext context) {
    return _TRICKER_APPKNG_BlocBuffer(
      data: data,
    );
  }
}

class _TRICKER_APPKNG_BlocBuffer extends StatelessWidget {
  _TRICKER_APPKNG_BlocBuffer({
    Key? key,
    this.data,
  }) : super(key: key);
  APPKNGSCHEMA? data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TRICKER_APPKNG_Bloc(),
        child: BlocBuilder<TRICKER_APPKNG_Bloc, String>(
          builder: (context, trick) {
            return ROCKWELL_APPKNGbody(data: data, trick: trick);
          },
        ));
  }
}

class ROCKWELL_APPKNGbody extends StatefulWidget {
  ROCKWELL_APPKNGbody({Key? key, this.data, this.trick}) : super(key: key);
  APPKNGSCHEMA? data;
  String? trick;

  @override
  State<ROCKWELL_APPKNGbody> createState() => _ROCKWELL_APPKNGbodyState();
}

class _ROCKWELL_APPKNGbodyState extends State<ROCKWELL_APPKNGbody> {
  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
    context.read<APPKNG_Bloc>().add(APPKNG_READ());
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    backpage_fn(); // Do some stuff.
    return true;
  }

  backpage_fn() {
    APPKNGvar.DHtimer.cancel();
    FIRSTUI.SEARCH = FIRSTUI.POACTIVE;
    APPKNGvar.ItemPickSELECT = '';
    context.read<TRICKER_APPKNG_Bloc>().add(TRICKER_APPKNGSETZERO());
    CuPage = Page1();
    MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
  }

  @override
  Widget build(BuildContext context) {
    PageMemory = 8;
    // print(widget.data?.UPDATE);

    if (widget.data?.UPDATE == 'OK') {
      setState(() {
        APPKNGvar.PO = widget.data?.PO ?? '';
        APPKNGvar.CP = widget.data?.CP ?? '';
        APPKNGvar.QTY = widget.data?.QTY ?? '';
        APPKNGvar.PROCESS = widget.data?.PROCESS ?? '';
        APPKNGvar.CUSLOT = widget.data?.CUSLOT ?? '';
        APPKNGvar.TPKLOT = widget.data?.TPKLOT ?? '';
        APPKNGvar.FG = widget.data?.FG ?? '';
        APPKNGvar.CUSTOMER = widget.data?.CUSTOMER ?? '';
        APPKNGvar.PART = widget.data?.PART ?? '';
        APPKNGvar.PARTNAME = widget.data?.PARTNAME ?? '';
        APPKNGvar.MATERIAL = widget.data?.MATERIAL ?? '';
        //
        APPKNGvar.ItemPick = widget.data?.ItemPick ?? [''];
        APPKNGvar.PCS = widget.data?.PCS ?? '';
        // APPKNGvar.PCS = '10';
        APPKNGvar.PCSleft = widget.data?.PCSleft ?? '';
        // APPKNGvar.PCSleft = '10';
        APPKNGvar.POINTs = widget.data?.POINTs ?? '';
        // APPKNGvar.POINTs = '10';
        // if (APPKNGvar.ItemPickSELECT != "") {
        //   //
        //   if (APPKNGvar.POINTs == "") {
        //     //
        //     APPKNGvar.POINTs == "0";
        //   }
        // }
        APPKNGvar.UNIT = widget.data?.UNIT ?? '';
        // APPKNGvar.UNIT = 'pcs/lots';
        APPKNGvar.INTERSEC = widget.data?.INTERSEC ?? '';
        //
        APPKNGvar.RESULTFORMAT = widget.data?.RESULTFORMAT ?? '';
        APPKNGvar.GRAPHTYPE = widget.data?.GRAPHTYPE ?? '';
        APPKNGvar.GAP = widget.data?.GAP ?? '';
        //
        APPKNGvar.preview = widget.data?.preview ?? [];
        APPKNGvar.confirmdata = widget.data?.confirmdata ?? [];
        APPKNGvar.ITEMleftUNIT = widget.data?.ITEMleftUNIT ?? [];
        APPKNGvar.ITEMleftVALUE = widget.data?.ITEMleftVALUE ?? [];

        APPKNGvar.PICs = widget.data?.Pic ?? '';

        if (APPKNGvar.PCSleft == '0') {
          BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
              "ITEM STATUS", "COMPLETE DATA", enumNotificationlist.Success);
        }

        widget.data?.UPDATE = '-';
      });

      // if (widget.trick == 'OK' &&
      //     APPKNGvar.PCSleft != '0' &&
      //     APPKNGvar.PCS != '' &&
      //     APPKNGvar.PCSleft != '' &&
      //     (int.parse(APPKNGvar.PCSleft) < int.parse(APPKNGvar.PCS))) {
      //   widget.trick = '';
      //   context.read<TRICKER_APPKNG_Bloc>().add(TRICKER_APPKNGFINISH());
      // }

      Timer timer = Timer(const Duration(seconds: 1), () {
        context.read<APPKNG_Bloc>().add(APPKNG_READ());
      });
      APPKNGvar.DHtimer = timer;
    }
    return SINGLESHOTAPRmain(
      //------ Left
      LABEL: "APP-INSHES",
      PO: APPKNGvar.PO,
      CP: APPKNGvar.CP,
      QTY: APPKNGvar.QTY,
      PROCESS: APPKNGvar.PROCESS,
      CUSLOT: APPKNGvar.CUSLOT,
      TPKLOT: APPKNGvar.TPKLOT,
      FG: APPKNGvar.FG,
      CUSTOMER: APPKNGvar.CUSTOMER,
      PART: APPKNGvar.PART,
      PARTNAME: APPKNGvar.PARTNAME,
      MATERIAL: APPKNGvar.MATERIAL,
      //------- Top
      ItemPickres: (v) {
        print(v);
        APPKNGvar.ItemPickSELECT = v;

        context.read<TRICKER_APPKNG_Bloc>().add(TRICKER_APPKNGgeteachITEM());
      },
      ItemPick: APPKNGvar.ItemPick,
      PCS: APPKNGvar.PCS,
      PCSleft: APPKNGvar.PCSleft,
      POINTs: APPKNGvar.POINTs,
      UNIT: APPKNGvar.UNIT,
      INTERSEC: APPKNGvar.INTERSEC,
      RESULTFORMAT: APPKNGvar.RESULTFORMAT,
      Ghtype: APPKNGvar.GRAPHTYPE,
      //------- Bottom
      GOOD: (v) {
        if (APPKNGvar.PCS != '') {
          APPKNGvar.APPEARANCE = 'Good';
          if (APPKNGvar.PCS != '' &&
              APPKNGvar.POINTs != '' &&
              APPKNGvar.ItemPickSELECT != '') {
            if (int.parse(APPKNGvar.PCSleft) > 0) {
              onLoadingFAKE(context);
              context.read<TRICKER_APPKNG_Bloc>().add(TRICKER_APPKNGFINISH());
            }
          } else {
            WORNINGpop(context, "Please select item");
          }
        }
      },
      NOGOOD: (v) {
        if (APPKNGvar.PCS != '') {
          if (APPKNGvar.PCS != '' &&
              APPKNGvar.POINTs != '' &&
              APPKNGvar.ItemPickSELECT != '') {
            if (int.parse(APPKNGvar.PCSleft) > 0) {
              APPKNGvar.APPEARANCE = 'no Good';
            }
          } else {
            WORNINGpop(context, "Please select item");
          }
        }
      },
      preview: APPKNGvar.preview,
      confirmdata: APPKNGvar.confirmdata.reversed.toList(),
      //------- Right
      CLEAR: (v) {
        context.read<TRICKER_APPKNG_Bloc>().add(TRICKER_APPKNGCLEAR());
      },
      BACKPAGE: (v) {
        APPKNGvar.DHtimer.cancel();
        FIRSTUI.SEARCH = FIRSTUI.POACTIVE;
        APPKNGvar.ItemPickSELECT = '';
        context.read<TRICKER_APPKNG_Bloc>().add(TRICKER_APPKNGSETZERO());
        CuPage = Page1();
        MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
      },
      RESETVALUE: (v) {
        context.read<TRICKER_APPKNG_Bloc>().add(TRICKER_APPKNGRESETVALUE());
      },
      ITEMleftUNIT: APPKNGvar.ITEMleftUNIT,
      ITEMleftVALUE: APPKNGvar.ITEMleftVALUE,
      PICB64: APPKNGvar.PICs,
    );
  }
}
