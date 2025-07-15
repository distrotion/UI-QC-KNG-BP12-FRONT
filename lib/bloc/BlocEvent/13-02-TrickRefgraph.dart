import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';

import '../../page/P13DSA01/DSA01var.dart';
import '../../page/P1FIRSTUI/FIRSTuiVAR.dart';

//-------------------------------------------------
String server = GLOserver;

abstract class TRICKER_Event {}

//--------------------------------

class TRICKER_GETINtoDSA01 extends TRICKER_Event {}

//-------------------------------- non returnfunction

class TRICKER_DSA01geteachITEM extends TRICKER_Event {}

class TRICKER_DSA01geteachGRAPH extends TRICKER_Event {}

class TRICKER_DSA01confirmdata extends TRICKER_Event {}

class TRICKER_DSA01CLEAR extends TRICKER_Event {}

class TRICKER_DSA01RESETVALUE extends TRICKER_Event {}

class TRICKER_DSA01SETZERO extends TRICKER_Event {}

//-------------------------------- FINISH

class TRICKER_DSA01FINISH extends TRICKER_Event {}

//-------------------------------- no request

class TRICKER_FLUSH extends TRICKER_Event {}

class TRICKER_DSA01_Bloc extends Bloc<TRICKER_Event, String> {
  TRICKER_DSA01_Bloc() : super('') {
    //--------------------------------
    on<TRICKER_GETINtoDSA01>((event, emit) {
      return _TRICKER_GETINtoDSA01('', emit);
    });

    //-------------------------------- non returnfunction

    on<TRICKER_DSA01geteachITEM>((event, emit) {
      return _TRICKER_DSA01geteachITEM('', emit);
    });

    on<TRICKER_DSA01geteachGRAPH>((event, emit) {
      return _TRICKER_DSA01geteachGRAPH('', emit);
    });

    on<TRICKER_DSA01confirmdata>((event, emit) {
      return _TRICKER_DSA01confirmdata('', emit);
    });

    on<TRICKER_DSA01CLEAR>((event, emit) {
      return _TRICKER_DSA01CLEAR('', emit);
    });

    on<TRICKER_DSA01RESETVALUE>((event, emit) {
      return _TRICKER_DSA01RESETVALUE('', emit);
    });

    on<TRICKER_DSA01SETZERO>((event, emit) {
      return _TRICKER_DSA01SETZERO('', emit);
    });

    //-------------------------------- FINISH

    on<TRICKER_DSA01FINISH>((event, emit) {
      return _TRICKER_DSA01FINISH('', emit);
    });

    //-------------------------------- no request

    on<TRICKER_FLUSH>((event, emit) {
      return _TRICKER_FLUSH('', emit);
    });
  }

  Future<void> _TRICKER_GETINtoDSA01(String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoDSA01',
      data: {
        "PO": FIRSTUI.POACTIVE,
        "CP": FIRSTUI.CPACTIVE,
        "USER": USERDATA.NAME,
        "USERID": USERDATA.ID,
      },
    );
    String output = '';
    if (response.statusCode == 200) {
      var databuff = response.data;
      if (databuff.toString() == 'OK') {
        output = 'OK';
      } else {
        output = 'NOK';
      }
    } else {
      //
    }
    emit(output);
  }

  Future<void> _TRICKER_DSA01geteachITEM(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'DSA01-geteachITEM',
      data: {
        "ITEMs": DSA01var.ItemPickSELECT,
      },
    );
    emit('');
  }

  Future<void> _TRICKER_DSA01geteachGRAPH(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'DSA01-geteachGRAPH',
      data: {
        "GAPname": DSA01var.GAPname,
      },
    );
    emit('');
  }

  Future<void> _TRICKER_DSA01confirmdata(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'DSA01-confirmdata',
      data: {
        "PO": DSA01var.PO,
        "CP": DSA01var.CP,
        "VAL1": DSA01var.valueX,
        "VAL2": DSA01var.valueY,
        "VAL3": DSA01var.valueZ,
        "VAL4": DSA01var.valueI,
        "Area": "",
        "FORMULA": DSA01var.FORMULA,
        "Result1": DSA01var.Result1,
        "Result2": DSA01var.Result2,
        "Result": DSA01var.Result,
      },
    );
    emit('');
  }

  Future<void> _TRICKER_DSA01CLEAR(String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'DSA01-CLEAR',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_DSA01RESETVALUE(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'DSA01-RESETVALUE',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_DSA01SETZERO(String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'DSA01-SETZERO',
      data: {},
    );
    emit('');
  }

  //-------------------------------- FINISH
  //TRICKER_DSA01FINISH

  Future<void> _TRICKER_DSA01FINISH(String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'DSA01-FINISH-CAL1',
      data: {
        "PO": DSA01var.PO,
        "CP": DSA01var.CP,
        "VAL1": DSA01var.valueX,
        "VAL2": DSA01var.valueY,
        "VAL3": DSA01var.valueZ,
        "VAL4": DSA01var.valueI,
        "Area": "",
        "FORMULA": DSA01var.FORMULA,
        "Result1": DSA01var.Result1,
        "Result2": DSA01var.Result2,
        "Result": DSA01var.Result,
      },
    );
    emit('');
  }

  //-------------------------------- no request

  Future<void> _TRICKER_FLUSH(String toAdd, Emitter<String> emit) async {
    emit('');
  }
}
