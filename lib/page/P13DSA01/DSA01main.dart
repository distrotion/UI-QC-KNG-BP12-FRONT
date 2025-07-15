import 'dart:async';
import 'dart:io';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_parser/math_parser.dart';
import 'package:qc_ui_isn_hes/widget/common/ComInputText.dart';

import '../../bloc/BlocEvent/13-01-Refgraph.dart';
import '../../bloc/BlocEvent/13-02-TrickRefgraph.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/cubit/NotificationEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../widget/QCWIDGET/W1SINGLESHOT/SINGLESHOTwiHGdget.dart';
import '../../widget/QCWIDGET/W1SINGLESHOT/SINGLESHOTwidget.dart';
import '../../widget/common/Advancedropdown.dart';
import '../../widget/common/ComYNPopup.dart';
import '../../widget/common/Loading.dart';
import '../../widget/onlyINqcui/popup.dart';
import '../P1FIRSTUI/FIRSTuiVAR.dart';
import '../page1.dart';
import 'DSA01var.dart';

class MICROVICKER_DSA01main extends StatelessWidget {
  MICROVICKER_DSA01main({Key? key, this.data}) : super(key: key);
  DSA01SCHEMA? data;
  @override
  Widget build(BuildContext context) {
    return _TRICKER_DSA01_BlocBuffer(
      data: data,
    );
  }
}

class _TRICKER_DSA01_BlocBuffer extends StatelessWidget {
  _TRICKER_DSA01_BlocBuffer({
    Key? key,
    this.data,
  }) : super(key: key);
  DSA01SCHEMA? data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TRICKER_DSA01_Bloc(),
        child: BlocBuilder<TRICKER_DSA01_Bloc, String>(
          builder: (context, trick) {
            return ROCKWELL_DSA01body(data: data);
          },
        ));
  }
}

class ROCKWELL_DSA01body extends StatefulWidget {
  ROCKWELL_DSA01body({Key? key, this.data}) : super(key: key);
  DSA01SCHEMA? data;

  @override
  State<ROCKWELL_DSA01body> createState() => _ROCKWELL_DSA01bodyState();
}

class _ROCKWELL_DSA01bodyState extends State<ROCKWELL_DSA01body> {
  @override
  void initState() {
    super.initState();
    BackButtonInterceptor.add(myInterceptor);
    context.read<DSA01_Bloc>().add(DSA01_READ());
    DSA01var.valueX = '';
    DSA01var.valueY = '';
    DSA01var.valueZ = '';
    DSA01var.valueI = '';
    DSA01var.Result1 = '';
    DSA01var.Result2 = '';
    DSA01var.Result = '';
    DSA01var.FORMULA = '';
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
    DSA01var.DHtimer.cancel();
    FIRSTUI.SEARCH = FIRSTUI.POACTIVE;
    DSA01var.ItemPickSELECT = '';
    context.read<TRICKER_DSA01_Bloc>().add(TRICKER_DSA01SETZERO());
    CuPage = Page1();
    MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
  }

  @override
  Widget build(BuildContext context) {
    PageMemory = 5;
    if (widget.data?.UPDATE == 'OK') {
      setState(() {
        DSA01var.PO = widget.data?.PO ?? '';
        DSA01var.CP = widget.data?.CP ?? '';
        DSA01var.QTY = widget.data?.QTY ?? '';
        DSA01var.PROCESS = widget.data?.PROCESS ?? '';
        DSA01var.CUSLOT = widget.data?.CUSLOT ?? '';
        DSA01var.TPKLOT = widget.data?.TPKLOT ?? '';
        DSA01var.FG = widget.data?.FG ?? '';
        DSA01var.CUSTOMER = widget.data?.CUSTOMER ?? '';
        DSA01var.PART = widget.data?.PART ?? '';
        DSA01var.PARTNAME = widget.data?.PARTNAME ?? '';
        DSA01var.MATERIAL = widget.data?.MATERIAL ?? '';
        //
        DSA01var.ItemPick = widget.data?.ItemPick ?? [''];
        DSA01var.PCS = widget.data?.PCS ?? '';
        // DSA01var.PCS = '10';
        DSA01var.PCSleft = widget.data?.PCSleft ?? '';
        // DSA01var.PCSleft = '10';
        DSA01var.POINTs = widget.data?.POINTs ?? '';
        // DSA01var.POINTs = '10';
        // if (DSA01var.ItemPickSELECT != "") {
        //   //
        //   if (DSA01var.POINTs == "") {
        //     //
        //     DSA01var.POINTs == "0";
        //   }
        // }
        DSA01var.UNIT = widget.data?.UNIT ?? '';
        // DSA01var.UNIT = 'pcs/lots';
        DSA01var.INTERSEC = widget.data?.INTERSEC ?? '';
        //
        DSA01var.RESULTFORMAT = widget.data?.RESULTFORMAT ?? '';
        DSA01var.GRAPHTYPE = widget.data?.GRAPHTYPE ?? '';
        DSA01var.GAP = widget.data?.GAP ?? '';
        DSA01var.GAPnameList = widget.data?.GAPnameList ?? [''];
        //
        DSA01var.preview = widget.data?.preview ?? [];
        DSA01var.confirmdata = widget.data?.confirmdata ?? [];
        DSA01var.ITEMleftUNIT = widget.data?.ITEMleftUNIT ?? [];
        DSA01var.ITEMleftVALUE = widget.data?.ITEMleftVALUE ?? [];

        DSA01var.PICs = widget.data?.Pic ?? '';

        if (DSA01var.PCSleft == '0') {
          BlocProvider.of<BlocNotification>(contextGB).UpdateNotification(
              "ITEM STATUS", "COMPLETE DATA", enumNotificationlist.Success);
        }

        widget.data?.UPDATE = '-';
      });

      Timer timer = Timer(const Duration(seconds: 1), () {
        context.read<DSA01_Bloc>().add(DSA01_READ());
      });
      DSA01var.DHtimer = timer;
    }
    return SINGLESHOTHGmain(
      //------ Left
      LABEL: "DSA01",
      PO: DSA01var.PO,
      CP: DSA01var.CP,
      QTY: DSA01var.QTY,
      PROCESS: DSA01var.PROCESS,
      CUSLOT: DSA01var.CUSLOT,
      TPKLOT: DSA01var.TPKLOT,
      FG: DSA01var.FG,
      CUSTOMER: DSA01var.CUSTOMER,
      PART: DSA01var.PART,
      PARTNAME: DSA01var.PARTNAME,
      MATERIAL: DSA01var.MATERIAL,
      //------- Top
      ItemPickres: (v) {
        print(v);
        DSA01var.ItemPickSELECT = v;
        //

        if (v.toUpperCase().contains("START")) {
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) {
              return Dialog(
                child: SizedBox(
                    height: 150,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: InkWell(
                          //     onTap: () {},
                          //     child: const SizedBox(
                          //       height: 24,
                          //       width: 36,
                          //       child: Padding(
                          //         padding: EdgeInsets.only(right: 12),
                          //         child: Center(child: Icon(Icons.close)),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("New MTO ?"),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: InkWell(
                                  onTap: () {
                                    DSA01var.iscontrol = true;
                                    DSA01var.edit = true;
                                    DSA01var.valueX = "";
                                    DSA01var.valueY = "";
                                    DSA01var.valueZ = "";
                                    DSA01var.valueI = "";

                                    DSA01var.FORMULA = "";
                                    DSA01var.Result1 = "";
                                    DSA01var.Result2 = "";
                                    DSA01var.Result = "";
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 40,
                                    color: Colors.blue,
                                    child: Center(child: Text("YES")),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: InkWell(
                                  onTap: () {
                                    Dio().post(
                                      GLOserver + 'GETDAS01BUFFER',
                                      data: {},
                                    ).then((v) {
                                      DSA01var.iscontrol = true;
                                      if (v.statusCode == 200) {
                                        var dataset = v.data;

                                        if (dataset.length > 0) {
                                          DSA01var.valueX = dataset[0]
                                                      ['VAL1'] !=
                                                  null
                                              ? dataset[0]['VAL1'].toString()
                                              : "";
                                          DSA01var.valueY = dataset[0]
                                                      ['VAL2'] !=
                                                  null
                                              ? dataset[0]['VAL2'].toString()
                                              : "";
                                          DSA01var.valueZ = dataset[0]
                                                      ['VAL3'] !=
                                                  null
                                              ? dataset[0]['VAL3'].toString()
                                              : "";
                                          DSA01var.valueI = dataset[0]
                                                      ['VAL4'] !=
                                                  null
                                              ? dataset[0]['VAL4'].toString()
                                              : "";

                                          DSA01var.FORMULA = dataset[0]
                                                      ['FORMULA'] !=
                                                  null
                                              ? dataset[0]['FORMULA'].toString()
                                              : "";
                                          DSA01var.Result1 = dataset[0]
                                                      ['Result1'] !=
                                                  null
                                              ? dataset[0]['Result1'].toString()
                                              : "";
                                          DSA01var.Result2 = dataset[0]
                                                      ['Result2'] !=
                                                  null
                                              ? dataset[0]['Result2'].toString()
                                              : "";
                                          DSA01var.Result = dataset[0]
                                                      ['Result'] !=
                                                  null
                                              ? dataset[0]['Result'].toString()
                                              : "";

                                          setState(() {});

                                          DSA01var.edit = false;

                                          Navigator.pop(context);
                                        }
                                      }
                                    });
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 40,
                                    color: Colors.blue,
                                    child: Center(child: Text("NO")),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              );
            },
          );
        } else if (v.toUpperCase().contains("END")) {
          showDialog(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) {
              return Dialog(
                child: SizedBox(
                    height: 150,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: InkWell(
                          //     onTap: () {},
                          //     child: const SizedBox(
                          //       height: 24,
                          //       width: 36,
                          //       child: Padding(
                          //         padding: EdgeInsets.only(right: 12),
                          //         child: Center(child: Icon(Icons.close)),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("End of MTO ?"),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: InkWell(
                                  onTap: () {
                                    DSA01var.iscontrol = true;
                                    DSA01var.edit = true;
                                    DSA01var.valueX = "";
                                    DSA01var.valueY = "";
                                    DSA01var.valueZ = "";
                                    DSA01var.valueI = "";

                                    DSA01var.FORMULA = "";
                                    DSA01var.Result1 = "";
                                    DSA01var.Result2 = "";
                                    DSA01var.Result = "";
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 40,
                                    color: Colors.blue,
                                    child: Center(child: Text("YES")),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: InkWell(
                                  onTap: () {
                                    DSA01var.iscontrol = true;
                                    DSA01var.edit = false;
                                    DSA01var.valueX = "";
                                    DSA01var.valueY = "";
                                    DSA01var.valueZ = "";
                                    DSA01var.valueI = "";

                                    DSA01var.FORMULA = "";
                                    DSA01var.Result1 = "";
                                    DSA01var.Result2 = "";
                                    DSA01var.Result = "";
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 40,
                                    color: Colors.blue,
                                    child: Center(child: Text("NO")),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              );
            },
          );
        }

        context.read<TRICKER_DSA01_Bloc>().add(TRICKER_DSA01geteachITEM());
      },
      ItemPick: DSA01var.ItemPick,
      PCS: DSA01var.PCS,
      PCSleft: DSA01var.PCSleft,
      POINTs: DSA01var.POINTs,
      UNIT: DSA01var.UNIT,
      INTERSEC: DSA01var.INTERSEC,
      RESULTFORMAT: DSA01var.RESULTFORMAT,
      Ghtype: DSA01var.GRAPHTYPE,
      GAP: DSA01var.GAP,
      GAPnameList: DSA01var.GAPnameList,
      GAPname: DSA01var.GAPname,
      GAPnamePick: (v) {
        DSA01var.GAPname = v;
        context.read<TRICKER_DSA01_Bloc>().add(TRICKER_DSA01geteachGRAPH());
      },
      //------- Bottom
      // dropdown: SizedBox(
      //   height: 40,
      //   width: 400,
      //   child: AdvanceDropDown(
      //     imgpath: 'assets/icons/icon-down_4@3x.png',
      //     listdropdown: const [
      //       MapEntry("", ""),
      //       MapEntry("GAS-HMV-001", "GAS-HMV-001"),
      //       MapEntry("GAS-HMV-002", "GAS-HMV-002"),
      //       MapEntry("GAS-HMV-003", "GAS-HMV-003"),
      //     ],
      //     onChangeinside: (d, v) {
      //       setState(() {
      //         DSA01var.dropdown = d;
      //       });
      //     },
      //     value: DSA01var.dropdown,
      //     height: 40,
      //     width: 400,
      //   ),
      // ),
      GET: (v) {
        print(DSA01var.PO);
        print(DSA01var.ItemPickSELECT);
        print(DSA01var.GRAPHTYPE);

        double Result1 = 0;
        double Result2 = 0;

        String datastr = DSA01var.GRAPHTYPE
            .replaceAll("X", DSA01var.valueX)
            .replaceAll("Y", DSA01var.valueY)
            .replaceAll("Z", DSA01var.valueZ)
            .replaceAll("I", DSA01var.valueI);

        List<String> data = datastr.split("|");
        String FORMULA1 = '';
        String FORMULA2 = '';

        if (DSA01var.valueX != '' &&
            DSA01var.valueY != '' &&
            DSA01var.Result == '' &&
            DSA01var.Result1 == '' &&
            DSA01var.Result2 == '' &&
            DSA01var.valueZ != '') {
          if (data.length > 0) {
            final definable = MathNodeExpression.getPotentialDefinable(
              data[0],
              hideBuiltIns: true,
            );

            final expression = MathNodeExpression.fromString(
              data[0],
              variableNames: definable.variables,
              isImplicitMultiplication: false,
            );

            final variableValues = <String, double>{};
            for (final variable in definable.variables) {
              print('Enter value for $variable:');
              final double value = double.parse(
                stdin.readLineSync() as String,
              );
              variableValues[variable] = value;
            }

            final result = expression.calc(
              MathVariableValues(variableValues),
            );

            print('Result: $result');
            DSA01var.iscontrol = true;
            DSA01var.Result1 = result.toString();
            Result1 = double.parse(result.toString());
            FORMULA1 = data[0];
          }
          if (data.length > 1) {
            final definable = MathNodeExpression.getPotentialDefinable(
              data[1],
              hideBuiltIns: true,
            );

            final expression = MathNodeExpression.fromString(
              data[1],
              variableNames: definable.variables,
              isImplicitMultiplication: false,
            );

            final variableValues = <String, double>{};
            for (final variable in definable.variables) {
              print('Enter value for $variable:');
              final double value = double.parse(
                stdin.readLineSync() as String,
              );
              variableValues[variable] = value;
            }

            final result = expression.calc(
              MathVariableValues(variableValues),
            );

            print('Result: $result');
            DSA01var.iscontrol = true;
            DSA01var.Result2 = result.toString();
            Result2 = double.parse(result.toString());
            FORMULA2 = data[1];
          }

          if (Result1 > Result2) {
            DSA01var.Result = Result2.toString();
            DSA01var.FORMULA = FORMULA1;

            if ((DSA01var.RESULTFORMAT == 'Graph' && DSA01var.GAPname != '') ||
                DSA01var.RESULTFORMAT != 'Graph') {
              if (DSA01var.PCS != '' &&
                  DSA01var.POINTs != '' &&
                  DSA01var.ItemPickSELECT != '') {
                if (int.parse(DSA01var.POINTs) > DSA01var.confirmdata.length) {
                  context
                      .read<TRICKER_DSA01_Bloc>()
                      .add(TRICKER_DSA01confirmdata());
                } else {
                  WORNINGpop(context, "Have completed POINTs");
                }
              } else {
                WORNINGpop(context, "Please select item");
              }
            } else {
              WORNINGpop(context, "Please select GRAPH");
            }
          } else {
            DSA01var.Result = Result1.toString();
            DSA01var.FORMULA = FORMULA2;

            if ((DSA01var.RESULTFORMAT == 'Graph' && DSA01var.GAPname != '') ||
                DSA01var.RESULTFORMAT != 'Graph') {
              if (DSA01var.PCS != '' &&
                  DSA01var.POINTs != '' &&
                  DSA01var.ItemPickSELECT != '') {
                if (int.parse(DSA01var.POINTs) > DSA01var.confirmdata.length) {
                  context
                      .read<TRICKER_DSA01_Bloc>()
                      .add(TRICKER_DSA01confirmdata());
                } else {
                  WORNINGpop(context, "Have completed POINTs");
                }
              } else {
                WORNINGpop(context, "Please select item");
              }
            } else {
              WORNINGpop(context, "Please select GRAPH");
            }
          }
        } else {
          WORNINGpop(context, "Please completed all POINTs");
        }

        // print((DSA01var.ItemPickSELECT).contains("0.15") ? "2" : "0");

        // Dio().post(
        //   GLOserver + 'GETHMVATPOINT',
        //   data: {
        //     "PO": DSA01var.PO,
        //     "NAME_INS": DSA01var.dropdown,
        //     "POINT": (DSA01var.ItemPickSELECT).contains("0.15") ? "2" : "0"
        //   },
        // );
        // if(){

        // }
      },
      ACCEPT: (v) {},
      FINISH: (v) {
        if (DSA01var.PCS != '' &&
            DSA01var.POINTs != '' &&
            DSA01var.ItemPickSELECT != '') {
          // if (int.parse(DSA01var.POINTs) == DSA01var.confirmdata.length) {
          if (int.parse(DSA01var.PCSleft) > 0) {
            onLoadingFAKE(context);
            context.read<TRICKER_DSA01_Bloc>().add(TRICKER_DSA01FINISH());
          }
          // } else {
          //   WORNINGpop(context, "POINTs are not complete");
          // }
        } else {
          WORNINGpop(context, "Please select item");
        }
      },
      preview: DSA01var.preview,
      confirmdata: DSA01var.confirmdata.reversed.toList(),
      //------- Right
      CLEAR: (v) {
        context.read<TRICKER_DSA01_Bloc>().add(TRICKER_DSA01CLEAR());
      },
      BACKPAGE: (v) {
        DSA01var.DHtimer.cancel();
        FIRSTUI.SEARCH = FIRSTUI.POACTIVE;
        DSA01var.ItemPickSELECT = '';
        context.read<TRICKER_DSA01_Bloc>().add(TRICKER_DSA01SETZERO());
        CuPage = Page1();
        MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
      },
      RESETVALUE: (v) {
        context.read<TRICKER_DSA01_Bloc>().add(TRICKER_DSA01RESETVALUE());
      },
      ITEMleftUNIT: DSA01var.ITEMleftUNIT,
      ITEMleftVALUE: DSA01var.ITEMleftVALUE,
      PICB64: DSA01var.PICs,
      invaluewid: SizedBox(
        height: 220,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: Center(
                      child: Text("Distance(D)"),
                    ),
                  ),
                  ComInputText(
                    height: 40,
                    width: 200,
                    isEnabled: DSA01var.edit,
                    isNumberOnly: true,
                    isContr: DSA01var.iscontrol,
                    fnContr: (input) {
                      setState(() {
                        DSA01var.iscontrol = input;
                      });
                    },
                    sValue: DSA01var.valueX,
                    returnfunc: (String s) {
                      setState(() {
                        DSA01var.valueX = s;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: Center(
                      child: Text("Factor(K)"),
                    ),
                  ),
                  ComInputText(
                    height: 40,
                    width: 200,
                    isEnabled: DSA01var.edit,
                    isNumberOnly: true,
                    isContr: DSA01var.iscontrol,
                    fnContr: (input) {
                      setState(() {
                        DSA01var.iscontrol = input;
                      });
                    },
                    sValue: DSA01var.valueY,
                    returnfunc: (String s) {
                      setState(() {
                        DSA01var.valueY = s;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: Center(
                      child: Text("Thickness(t)"),
                    ),
                  ),
                  ComInputText(
                    height: 40,
                    width: 200,
                    isEnabled: DSA01var.edit,
                    isNumberOnly: true,
                    isContr: DSA01var.iscontrol,
                    fnContr: (input) {
                      setState(() {
                        DSA01var.iscontrol = input;
                      });
                    },
                    sValue: DSA01var.valueZ,
                    returnfunc: (String s) {
                      setState(() {
                        DSA01var.valueZ = s;
                      });
                    },
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     SizedBox(
              //       width: 120,
              //       child: Center(
              //         child: Text("I"),
              //       ),
              //     ),
              //     ComInputText(
              //       height: 40,
              //       width: 200,
              //       isNumberOnly: true,
              //       isContr: DSA01var.iscontrol,
              //       fnContr: (input) {
              //         setState(() {
              //           DSA01var.iscontrol = input;
              //         });
              //       },
              //       sValue: DSA01var.valueI,
              //       returnfunc: (String s) {
              //         setState(() {
              //           DSA01var.valueI = s;
              //         });
              //       },
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     SizedBox(
              //       width: 80,
              //       child: Center(
              //         child: Text("Result 1"),
              //       ),
              //     ),
              //     ComInputText(
              //       height: 40,
              //       width: 200,
              //       isEnabled: false,
              //       isContr: DSA01var.iscontrol,
              //       fnContr: (input) {
              //         setState(() {
              //           DSA01var.iscontrol = input;
              //         });
              //       },
              //       sValue: DSA01var.Result1,
              //       returnfunc: (String s) {
              //         setState(() {
              //           DSA01var.Result1 = s;
              //         });
              //       },
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     SizedBox(
              //       width: 80,
              //       child: Center(
              //         child: Text("Result 2"),
              //       ),
              //     ),
              //     ComInputText(
              //       height: 40,
              //       width: 200,
              //       isEnabled: false,
              //       isContr: DSA01var.iscontrol,
              //       fnContr: (input) {
              //         setState(() {
              //           DSA01var.iscontrol = input;
              //         });
              //       },
              //       sValue: DSA01var.Result2,
              //       returnfunc: (String s) {
              //         setState(() {
              //           DSA01var.Result2 = s;
              //         });
              //       },
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: Center(
                      child: Text("Result"),
                    ),
                  ),
                  ComInputText(
                    height: 40,
                    width: 200,
                    isEnabled: false,
                    isContr: DSA01var.iscontrol,
                    fnContr: (input) {
                      setState(() {
                        DSA01var.iscontrol = input;
                      });
                    },
                    sValue: DSA01var.Result,
                    returnfunc: (String s) {
                      setState(() {
                        DSA01var.Result = s;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    child: Center(
                      child: Text("FORMULA"),
                    ),
                  ),
                  ComInputText(
                    height: 40,
                    width: 300,
                    isEnabled: false,
                    isContr: DSA01var.iscontrol,
                    fnContr: (input) {
                      setState(() {
                        DSA01var.iscontrol = input;
                      });
                    },
                    sValue: DSA01var.FORMULA,
                    returnfunc: (String s) {
                      setState(() {
                        DSA01var.FORMULA = s;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
