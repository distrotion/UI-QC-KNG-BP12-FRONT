import 'dart:async';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/07-01-KNGMCS001.dart';
import '../../bloc/BlocEvent/07-02-TrickKNGMCS001.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/cubit/NotificationEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../widget/QCWIDGET/W1SINGLESHOT/SINGLESHOTwidget.dart';
import '../../widget/QCWIDGET/W1SINGLESHOTIMG/SINGLESHOTIMGwidget.dart';
import '../../widget/common/ComInputText.dart';
import '../../widget/common/Loading.dart';
import '../../widget/common/imgset.dart';
import '../../widget/onlyINqcui/popup.dart';
import '../P1FIRSTUI/FIRSTuiVAR.dart';
import '../page1.dart';
import 'KNGMCS001var.dart';

late BuildContext MICROSCOPEKNGMCS001_CONTEXT;

class MICROSCOPE_KNGMCS001main extends StatelessWidget {
  MICROSCOPE_KNGMCS001main({Key? key, this.data}) : super(key: key);
  KNGMCS001SCHEMA? data;
  @override
  Widget build(BuildContext context) {
    return _TRICKER_KNGMCS001_BlocBuffer(
      data: data,
    );
  }
}

class _TRICKER_KNGMCS001_BlocBuffer extends StatelessWidget {
  _TRICKER_KNGMCS001_BlocBuffer({
    Key? key,
    this.data,
  }) : super(key: key);
  KNGMCS001SCHEMA? data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TRICKER_KNGMCS001_Bloc(),
        child: BlocBuilder<TRICKER_KNGMCS001_Bloc, String>(
          builder: (context, trick) {
            return ROCKWELL_KNGMCS001body(data: data);
          },
        ));
  }
}

class ROCKWELL_KNGMCS001body extends StatefulWidget {
  ROCKWELL_KNGMCS001body({Key? key, this.data}) : super(key: key);
  KNGMCS001SCHEMA? data;

  @override
  State<ROCKWELL_KNGMCS001body> createState() => _ROCKWELL_KNGMCS001bodyState();
}

class _ROCKWELL_KNGMCS001bodyState extends State<ROCKWELL_KNGMCS001body> {
  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
    context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
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
    KNGMCS001var.base64pic01 = imgw;
    KNGMCS001var.base64pic02 = imgw;
    KNGMCS001var.base64pic03 = imgw;
    KNGMCS001var.base64pic04 = imgw;
    KNGMCS001var.base64pic05 = imgw;
    KNGMCS001var.base64pic06 = imgw;
    KNGMCS001var.base64pic07 = imgw;
    KNGMCS001var.base64pic08 = imgw;
    KNGMCS001var.base64pic09 = imgw;
    KNGMCS001var.base64pic10 = imgw;
    KNGMCS001var.base64pic11 = imgw;
    KNGMCS001var.base64pic12 = imgw;

    KNGMCS001var.base64pic01data = '';
    KNGMCS001var.base64pic02data = '';
    KNGMCS001var.base64pic03data = '';
    KNGMCS001var.base64pic04data = '';

    KNGMCS001var.base64pic05data = '';
    KNGMCS001var.base64pic06data = '';
    KNGMCS001var.base64pic07data = '';
    KNGMCS001var.base64pic08data = '';
    KNGMCS001var.base64pic09data = '';
    KNGMCS001var.base64pic10data = '';
    KNGMCS001var.base64pic11data = '';
    KNGMCS001var.base64pic12data = '';

    // KNGMCS001var.DHtimer.cancel();
    FIRSTUI.SEARCH = FIRSTUI.POACTIVE;
    KNGMCS001var.ItemPickSELECT = '';
    context.read<TRICKER_KNGMCS001_Bloc>().add(TRICKER_KNGMCS001SETZERO());
    CuPage = Page1();
    MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
  }

  @override
  Widget build(BuildContext context) {
    PageMemory = 6;

    MICROSCOPEKNGMCS001_CONTEXT = context;

    if (widget.data?.UPDATE == 'OK') {
      setState(() {
        KNGMCS001var.PO = widget.data?.PO ?? '';
        KNGMCS001var.CP = widget.data?.CP ?? '';
        KNGMCS001var.QTY = widget.data?.QTY ?? '';
        KNGMCS001var.PROCESS = widget.data?.PROCESS ?? '';
        KNGMCS001var.CUSLOT = widget.data?.CUSLOT ?? '';
        KNGMCS001var.TPKLOT = widget.data?.TPKLOT ?? '';
        KNGMCS001var.FG = widget.data?.FG ?? '';
        KNGMCS001var.CUSTOMER = widget.data?.CUSTOMER ?? '';
        KNGMCS001var.PART = widget.data?.PART ?? '';
        KNGMCS001var.PARTNAME = widget.data?.PARTNAME ?? '';
        KNGMCS001var.MATERIAL = widget.data?.MATERIAL ?? '';
        //
        KNGMCS001var.ItemPick = widget.data?.ItemPick ?? [''];
        KNGMCS001var.PCS = widget.data?.PCS ?? '';
        // KNGMCS001var.PCS = '10';
        KNGMCS001var.PCSleft = widget.data?.PCSleft ?? '';
        // KNGMCS001var.PCSleft = '10';
        KNGMCS001var.POINTs = widget.data?.POINTs ?? '';
        // KNGMCS001var.POINTs = '10';
        KNGMCS001var.UNIT = widget.data?.UNIT ?? '';
        // KNGMCS001var.UNIT = 'pcs/lots';
        KNGMCS001var.INTERSEC = widget.data?.INTERSEC ?? '';
        //
        KNGMCS001var.RESULTFORMAT = widget.data?.RESULTFORMAT ?? '';
        KNGMCS001var.GRAPHTYPE = widget.data?.GRAPHTYPE ?? '';
        KNGMCS001var.GAP = widget.data?.GAP ?? '';
        //
        KNGMCS001var.preview = widget.data?.preview ?? [];
        KNGMCS001var.confirmdata = widget.data?.confirmdata ?? [];
        KNGMCS001var.ITEMleftUNIT = widget.data?.ITEMleftUNIT ?? [];
        KNGMCS001var.ITEMleftVALUE = widget.data?.ITEMleftVALUE ?? [];

        if (KNGMCS001var.PCSleft == '0') {
          BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
              "ITEM STATUS", "COMPLETE DATA", enumNotificationlist.Success);
        }

        widget.data?.UPDATE = '-';
      });

      // Timer timer = Timer(const Duration(seconds: 1), () {
      //   context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
      // });
      // KNGMCS001var.DHtimer = timer;
    }

    return SINGLESHOTIMGmain(
      //------ Left
      LABEL: "GAS-MCS-002",
      PO: KNGMCS001var.PO,
      CP: KNGMCS001var.CP,
      QTY: KNGMCS001var.QTY,
      PROCESS: KNGMCS001var.PROCESS,
      CUSLOT: KNGMCS001var.CUSLOT,
      TPKLOT: KNGMCS001var.TPKLOT,
      FG: KNGMCS001var.FG,
      CUSTOMER: KNGMCS001var.CUSTOMER,
      PART: KNGMCS001var.PART,
      PARTNAME: KNGMCS001var.PARTNAME,
      MATERIAL: KNGMCS001var.MATERIAL,
      //------- Top
      ItemPickres: (v) {
        print(v);

        KNGMCS001var.ItemPickSELECT = v;
        //----

        context
            .read<TRICKER_KNGMCS001_Bloc>()
            .add(TRICKER_KNGMCS001geteachITEM());
        KNGMCS001var.base64pic01 = imgw;
        KNGMCS001var.base64pic02 = imgw;
        KNGMCS001var.base64pic03 = imgw;
        KNGMCS001var.base64pic04 = imgw;
        KNGMCS001var.base64pic05 = imgw;
        KNGMCS001var.base64pic06 = imgw;
        KNGMCS001var.base64pic07 = imgw;
        KNGMCS001var.base64pic08 = imgw;
        KNGMCS001var.base64pic09 = imgw;
        KNGMCS001var.base64pic10 = imgw;
        KNGMCS001var.base64pic11 = imgw;
        KNGMCS001var.base64pic12 = imgw;

        KNGMCS001var.iscontrol = true;
        KNGMCS001var.base64pic01data = '';
        KNGMCS001var.base64pic02data = '';
        KNGMCS001var.base64pic03data = '';
        KNGMCS001var.base64pic04data = '';

        KNGMCS001var.base64pic05data = '';
        KNGMCS001var.base64pic06data = '';
        KNGMCS001var.base64pic07data = '';
        KNGMCS001var.base64pic08data = '';
        KNGMCS001var.base64pic09data = '';
        KNGMCS001var.base64pic10data = '';
        KNGMCS001var.base64pic11data = '';
        KNGMCS001var.base64pic12data = '';

        context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
      },
      ItemPick: KNGMCS001var.ItemPick,
      PCS: KNGMCS001var.PCS,
      PCSleft: KNGMCS001var.PCSleft,
      POINTs: KNGMCS001var.POINTs,
      UNIT: KNGMCS001var.UNIT,
      INTERSEC: KNGMCS001var.INTERSEC,
      RESULTFORMAT: KNGMCS001var.RESULTFORMAT,
      Ghtype: KNGMCS001var.GRAPHTYPE,

      //------- Bottom
      ACCEPT: (v) {
        // print(checkpic());
        if (checkpic()) {
          // if (pointpic()) {
          if (KNGMCS001var.PCS != '' &&
              KNGMCS001var.POINTs != '' &&
              KNGMCS001var.ItemPickSELECT != '') {
            onLoadingFAKEintTIME(context, 3);
            if (int.parse(KNGMCS001var.PCSleft) > 0) {
              context
                  .read<TRICKER_KNGMCS001_Bloc>()
                  .add(TRICKER_KNGMCS001FINISH());
              Timer(const Duration(seconds: 3), () {
                context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
              });
            }
          } else {
            WORNINGpop(context, "Please select item");
          }
          // } else {
          //   WORNINGpop(context, "Please insert data");
          // }
        } else {
          WORNINGpop(context, "Please upload picture for Compound Layer");
        }
      },
      //-------------
      INSdd: (v, s) {
        KNGMCS001var.selectINS = v;
      },
      INSddData: KNGMCS001var.selectINS,
      PRread: (v) {
        if (KNGMCS001var.ItemPickSELECT.contains("Compound")) {
          KNGMCS001var.iscontrol = true;
          context.read<TRICKER_KNGMCS001_Bloc>().add(TRICKER_KNGMCS001getCP());
        } else if (KNGMCS001var.ItemPickSELECT.contains("Porous")) {
          WORNINGpop(context, "ITEM Porous");
        } else {
          KNGMCS001var.iscontrol = true;
          context.read<TRICKER_KNGMCS001_Bloc>().add(TRICKER_KNGMCS001getCP());
        }
      },
      CPreadbool: KNGMCS001var.ItemPickSELECT.contains("Compound") ||
          !(KNGMCS001var.ItemPickSELECT.contains("Compound") &&
              KNGMCS001var.ItemPickSELECT.contains("Porous")),
      CPread: (v) {
        if (KNGMCS001var.ItemPickSELECT.contains("Porous")) {
          KNGMCS001var.iscontrol = true;
          context.read<TRICKER_KNGMCS001_Bloc>().add(TRICKER_KNGMCS001getPR());
        } else if (KNGMCS001var.ItemPickSELECT.contains("Compound")) {
          //Porous
          WORNINGpop(context, "ITEM Compound");
        } else {
          KNGMCS001var.iscontrol = true;
          context.read<TRICKER_KNGMCS001_Bloc>().add(TRICKER_KNGMCS001getPR());
        }
      },
      PRreadbool: KNGMCS001var.ItemPickSELECT.contains("Porous") ||
          !(KNGMCS001var.ItemPickSELECT.contains("Compound") &&
              KNGMCS001var.ItemPickSELECT.contains("Porous")),
      //-------------
      FINISH: (v) {},
      preview: KNGMCS001var.preview,
      confirmdata: KNGMCS001var.confirmdata.reversed.toList(),
      //------- Right
      CLEAR: (v) {},
      BACKPAGE: (v) {
        KNGMCS001var.base64pic01 = imgw;
        KNGMCS001var.base64pic02 = imgw;
        KNGMCS001var.base64pic03 = imgw;
        KNGMCS001var.base64pic04 = imgw;

        KNGMCS001var.base64pic05 = imgw;
        KNGMCS001var.base64pic06 = imgw;
        KNGMCS001var.base64pic07 = imgw;
        KNGMCS001var.base64pic08 = imgw;
        KNGMCS001var.base64pic09 = imgw;
        KNGMCS001var.base64pic10 = imgw;
        KNGMCS001var.base64pic11 = imgw;
        KNGMCS001var.base64pic12 = imgw;

        KNGMCS001var.base64pic01data = '';
        KNGMCS001var.base64pic02data = '';
        KNGMCS001var.base64pic03data = '';
        KNGMCS001var.base64pic04data = '';

        KNGMCS001var.base64pic05data = '';
        KNGMCS001var.base64pic06data = '';
        KNGMCS001var.base64pic07data = '';
        KNGMCS001var.base64pic08data = '';
        KNGMCS001var.base64pic09data = '';
        KNGMCS001var.base64pic10data = '';
        KNGMCS001var.base64pic11data = '';
        KNGMCS001var.base64pic12data = '';
        // KNGMCS001var.DHtimer.cancel();
        FIRSTUI.SEARCH = FIRSTUI.POACTIVE;
        KNGMCS001var.ItemPickSELECT = '';
        context.read<TRICKER_KNGMCS001_Bloc>().add(TRICKER_KNGMCS001SETZERO());
        CuPage = Page1();
        MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
      },
      RESETVALUE: (v) {},
      ITEMleftUNIT: KNGMCS001var.ITEMleftUNIT,
      ITEMleftVALUE: KNGMCS001var.ITEMleftVALUE,
      wchild: Column(
        children: [
          FileUploadButton01(),
          FileUploadButton02(),
          FileUploadButton03(),
          FileUploadButton04(),
          FileUploadButton05(),
          FileUploadButton06(),
          FileUploadButton07(),
          FileUploadButton08(),
          FileUploadButton09(),
          FileUploadButton10(),
          FileUploadButton11(),
          FileUploadButton12(),
        ],
      ),
    );
  }
}

class FileUploadButton01 extends StatefulWidget {
  const FileUploadButton01({Key? key}) : super(key: key);

  @override
  State<FileUploadButton01> createState() => _FileUploadButton01State();
}

class _FileUploadButton01State extends State<FileUploadButton01> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 1",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic01data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic01data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic01,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic01,
            setimg: (img) {
              KNGMCS001var.base64pic01 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton02 extends StatefulWidget {
  const FileUploadButton02({Key? key}) : super(key: key);

  @override
  State<FileUploadButton02> createState() => _FileUploadButton02State();
}

class _FileUploadButton02State extends State<FileUploadButton02> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 2",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic02data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic02data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic02,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic02,
            setimg: (img) {
              KNGMCS001var.base64pic02 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton03 extends StatefulWidget {
  const FileUploadButton03({Key? key}) : super(key: key);

  @override
  State<FileUploadButton03> createState() => _FileUploadButton03State();
}

class _FileUploadButton03State extends State<FileUploadButton03> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 3",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic03data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic03data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic03,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic03,
            setimg: (img) {
              KNGMCS001var.base64pic03 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton04 extends StatefulWidget {
  const FileUploadButton04({Key? key}) : super(key: key);

  @override
  State<FileUploadButton04> createState() => _FileUploadButton04State();
}

class _FileUploadButton04State extends State<FileUploadButton04> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 4",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic04data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic04data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic04,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic04,
            setimg: (img) {
              KNGMCS001var.base64pic04 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton05 extends StatefulWidget {
  const FileUploadButton05({Key? key}) : super(key: key);

  @override
  State<FileUploadButton05> createState() => _FileUploadButton05State();
}

class _FileUploadButton05State extends State<FileUploadButton05> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 5",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic05data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic05data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic05,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic05,
            setimg: (img) {
              KNGMCS001var.base64pic05 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton06 extends StatefulWidget {
  const FileUploadButton06({Key? key}) : super(key: key);

  @override
  State<FileUploadButton06> createState() => _FileUploadButton06State();
}

class _FileUploadButton06State extends State<FileUploadButton06> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 6",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic06data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic06data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic06,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic06,
            setimg: (img) {
              KNGMCS001var.base64pic06 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton07 extends StatefulWidget {
  const FileUploadButton07({Key? key}) : super(key: key);

  @override
  State<FileUploadButton07> createState() => _FileUploadButton07State();
}

class _FileUploadButton07State extends State<FileUploadButton07> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 7",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic07data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic07data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic07,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic07,
            setimg: (img) {
              KNGMCS001var.base64pic07 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton08 extends StatefulWidget {
  const FileUploadButton08({Key? key}) : super(key: key);

  @override
  State<FileUploadButton08> createState() => _FileUploadButton08State();
}

class _FileUploadButton08State extends State<FileUploadButton08> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 8",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic08data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic08data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic08,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic08,
            setimg: (img) {
              KNGMCS001var.base64pic08 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton09 extends StatefulWidget {
  const FileUploadButton09({Key? key}) : super(key: key);

  @override
  State<FileUploadButton09> createState() => _FileUploadButton09State();
}

class _FileUploadButton09State extends State<FileUploadButton09> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 9",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic09data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic09data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic09,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic09,
            setimg: (img) {
              KNGMCS001var.base64pic09 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton10 extends StatefulWidget {
  const FileUploadButton10({Key? key}) : super(key: key);

  @override
  State<FileUploadButton10> createState() => _FileUploadButton10State();
}

class _FileUploadButton10State extends State<FileUploadButton10> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 10",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic10data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic10data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic10,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic10,
            setimg: (img) {
              KNGMCS001var.base64pic10 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton11 extends StatefulWidget {
  const FileUploadButton11({Key? key}) : super(key: key);

  @override
  State<FileUploadButton11> createState() => _FileUploadButton11State();
}

class _FileUploadButton11State extends State<FileUploadButton11> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 11",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic11data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic11data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic11,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic11,
            setimg: (img) {
              KNGMCS001var.base64pic11 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

class FileUploadButton12 extends StatefulWidget {
  const FileUploadButton12({Key? key}) : super(key: key);

  @override
  State<FileUploadButton12> createState() => _FileUploadButton12State();
}

class _FileUploadButton12State extends State<FileUploadButton12> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 1000,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ComInputText(
            sLabel: "value 12",
            height: 40,
            // isEnabled: false,
            isContr: KNGMCS001var.iscontrol,
            fnContr: (input) {
              setState(() {
                KNGMCS001var.iscontrol = input;
              });
            },
            sValue: KNGMCS001var.base64pic12data,
            returnfunc: (String s) {
              KNGMCS001var.base64pic12data = s;
            },
          ),
          PicShow(
            width: 200,
            height: 100,
            base64: KNGMCS001var.base64pic12,
          ),
          IMGbutton(
            base64pic: KNGMCS001var.base64pic12,
            setimg: (img) {
              KNGMCS001var.base64pic12 = img;
              context.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
            },
          ),
        ],
      ),
    );
  }
}

bool pointpic() {
  bool out = false;
  if (KNGMCS001var.POINTs == '1') {
    if (KNGMCS001var.base64pic01data != '' &&
        (KNGMCS001var.base64pic02data == '' ||
            KNGMCS001var.base64pic02data == '0') &&
        (KNGMCS001var.base64pic03data == '' ||
            KNGMCS001var.base64pic03data == '0') &&
        (KNGMCS001var.base64pic04data == '' ||
            KNGMCS001var.base64pic04data == '0')) {
      out = true;
    }
  } else if (KNGMCS001var.POINTs == '2') {
    if (KNGMCS001var.base64pic01data != '' &&
        KNGMCS001var.base64pic02data != '' &&
        (KNGMCS001var.base64pic03data == '' ||
            KNGMCS001var.base64pic03data == '0') &&
        (KNGMCS001var.base64pic04data == '' ||
            KNGMCS001var.base64pic04data == '0')) {
      out = true;
    }
  } else if (KNGMCS001var.POINTs == '3') {
    if (KNGMCS001var.base64pic01data != '' &&
        KNGMCS001var.base64pic02data != '' &&
        KNGMCS001var.base64pic03data != '' &&
        (KNGMCS001var.base64pic04data == '' ||
            KNGMCS001var.base64pic04data == '0')) {
      out = true;
    }
  } else if (KNGMCS001var.POINTs == '4') {
    if (KNGMCS001var.base64pic01data != '' &&
        KNGMCS001var.base64pic02data != '' &&
        KNGMCS001var.base64pic03data != '' &&
        KNGMCS001var.base64pic04data != '') {
      out = true;
    }
  }

  return out;
}

bool checkpic() {
  bool out = false;
  if (KNGMCS001var.ItemPickSELECT == 'Compound Layer') {
    if (KNGMCS001var.base64pic01 != imgw) {
      out = true;
    }
  } else {
    out = true;
  }
  return out;
}
