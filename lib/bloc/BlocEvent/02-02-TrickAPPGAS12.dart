import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/P1FIRSTUI/FIRSTuiVAR.dart';
import '../../page/P2APPKNG/APPKNGvar.dart';

//-------------------------------------------------
String server = GLOserver;

abstract class TRICKER_Event {}

//--------------------------------

class TRICKER_GETINtoAPPKNG extends TRICKER_Event {}

//-------------------------------- non returnfunction

class TRICKER_APPKNGgeteachITEM extends TRICKER_Event {}

class TRICKER_APPKNGconfirmdata extends TRICKER_Event {}

class TRICKER_APPKNGCLEAR extends TRICKER_Event {}

class TRICKER_APPKNGRESETVALUE extends TRICKER_Event {}

class TRICKER_APPKNGSETZERO extends TRICKER_Event {}

//-------------------------------- FINISH

class TRICKER_APPKNGFINISH extends TRICKER_Event {}

//-------------------------------- no request

class TRICKER_FLUSH extends TRICKER_Event {}

class TRICKER_APPKNG_Bloc extends Bloc<TRICKER_Event, String> {
  TRICKER_APPKNG_Bloc() : super('') {
    //--------------------------------
    on<TRICKER_GETINtoAPPKNG>((event, emit) {
      return _TRICKER_GETINtoAPPKNG('', emit);
    });

    //-------------------------------- non returnfunction

    on<TRICKER_APPKNGgeteachITEM>((event, emit) {
      return _TRICKER_APPKNGgeteachITEM('', emit);
    });

    on<TRICKER_APPKNGconfirmdata>((event, emit) {
      return _TRICKER_APPKNGconfirmdata('', emit);
    });

    on<TRICKER_APPKNGCLEAR>((event, emit) {
      return _TRICKER_APPKNGCLEAR('', emit);
    });

    on<TRICKER_APPKNGRESETVALUE>((event, emit) {
      return _TRICKER_APPKNGRESETVALUE('', emit);
    });

    on<TRICKER_APPKNGSETZERO>((event, emit) {
      return _TRICKER_APPKNGSETZERO('', emit);
    });

    //-------------------------------- FINISH

    on<TRICKER_APPKNGFINISH>((event, emit) {
      return _TRICKER_APPKNGFINISH('', emit);
    });

    //-------------------------------- no request

    on<TRICKER_FLUSH>((event, emit) {
      return _TRICKER_FLUSH('', emit);
    });
  }

  Future<void> _TRICKER_GETINtoAPPKNG(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoAPPKNG',
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

  Future<void> _TRICKER_APPKNGgeteachITEM(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'APPKNG-geteachITEM',
      data: {
        "ITEMs": APPKNGvar.ItemPickSELECT,
      },
    );
    emit('');
  }

  Future<void> _TRICKER_APPKNGconfirmdata(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'APPKNG-confirmdata',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_APPKNGCLEAR(String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'APPKNG-CLEAR',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_APPKNGRESETVALUE(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'APPKNG-RESETVALUE',
      data: {},
    );
    emit('');
  }

  Future<void> _TRICKER_APPKNGSETZERO(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'APPKNG-SETZERO',
      data: {},
    );
    emit('');
  }

  //-------------------------------- FINISH
  //TRICKER_APPKNGFINISH

  Future<void> _TRICKER_APPKNGFINISH(String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'APPKNG-FINISH-APR',
      data: {
        "APRitem": APPKNGvar.ItemPickSELECT,
        "APRre": APPKNGvar.APPEARANCE,
      },
    );
    emit('OK');
  }

  //-------------------------------- no request

  Future<void> _TRICKER_FLUSH(String toAdd, Emitter<String> emit) async {
    emit('');
  }
}
