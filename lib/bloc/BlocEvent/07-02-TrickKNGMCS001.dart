import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/global.dart';
import '../../page/P1FIRSTUI/FIRSTuiVAR.dart';
import '../../page/P7KNGMCS001/KNGMCS001main.dart';
import '../../page/P7KNGMCS001/KNGMCS001var.dart';
import '07-01-KNGMCS001.dart';

//-------------------------------------------------
String server = GLOserver;
String serverR = 'http://172.101.33.151:1880/';

abstract class TRICKER_Event {}

//--------------------------------

class TRICKER_GETINtoKNGMCS001 extends TRICKER_Event {}

//-------------------------------- non returnfunction

class TRICKER_KNGMCS001geteachITEM extends TRICKER_Event {}

class TRICKER_KNGMCS001geteachGRAPH extends TRICKER_Event {}

class TRICKER_KNGMCS001confirmdata extends TRICKER_Event {}

class TRICKER_KNGMCS001CLEAR extends TRICKER_Event {}

class TRICKER_KNGMCS001RESETVALUE extends TRICKER_Event {}

class TRICKER_KNGMCS001SETZERO extends TRICKER_Event {}

//

class TRICKER_KNGMCS001getPR extends TRICKER_Event {}

class TRICKER_KNGMCS001getCP extends TRICKER_Event {}

//-------------------------------- FINISH

class TRICKER_KNGMCS001FINISH extends TRICKER_Event {}

//-------------------------------- no request

class TRICKER_FLUSH extends TRICKER_Event {}

class TRICKER_KNGMCS001_Bloc extends Bloc<TRICKER_Event, String> {
  TRICKER_KNGMCS001_Bloc() : super('') {
    //--------------------------------
    on<TRICKER_GETINtoKNGMCS001>((event, emit) {
      return _TRICKER_GETINtoKNGMCS001('', emit);
    });

    //-------------------------------- non returnfunction

    on<TRICKER_KNGMCS001geteachITEM>((event, emit) {
      return _TRICKER_KNGMCS001geteachITEM('', emit);
    });

    on<TRICKER_KNGMCS001confirmdata>((event, emit) {
      return _TRICKER_KNGMCS001confirmdata('', emit);
    });

    on<TRICKER_KNGMCS001CLEAR>((event, emit) {
      return _TRICKER_KNGMCS001CLEAR('', emit);
    });

    on<TRICKER_KNGMCS001RESETVALUE>((event, emit) {
      return _TRICKER_KNGMCS001RESETVALUE('', emit);
    });

    on<TRICKER_KNGMCS001SETZERO>((event, emit) {
      return _TRICKER_KNGMCS001SETZERO('', emit);
    });
    //
    on<TRICKER_KNGMCS001getPR>((event, emit) {
      return _TRICKER_KNGMCS001getPR('', emit);
    });

    on<TRICKER_KNGMCS001getCP>((event, emit) {
      return _TRICKER_KNGMCS001getCP('', emit);
    });

    //-------------------------------- FINISH

    on<TRICKER_KNGMCS001FINISH>((event, emit) {
      return _TRICKER_KNGMCS001FINISH('', emit);
    });

    //-------------------------------- no request

    on<TRICKER_FLUSH>((event, emit) {
      return _TRICKER_FLUSH('', emit);
    });
  }

  Future<void> _TRICKER_GETINtoKNGMCS001(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'GETINtoKNGMCS001',
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
    MICROSCOPEKNGMCS001_CONTEXT.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
    emit(output);
  }

  Future<void> _TRICKER_KNGMCS001geteachITEM(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'KNGMCS001-geteachITEM',
      data: {
        "ITEMs": KNGMCS001var.ItemPickSELECT,
      },
    );
    MICROSCOPEKNGMCS001_CONTEXT.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
    emit('');
  }

  Future<void> _TRICKER_KNGMCS001confirmdata(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'KNGMCS001-confirmdata',
      data: {},
    );
    MICROSCOPEKNGMCS001_CONTEXT.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
    emit('');
  }

  Future<void> _TRICKER_KNGMCS001CLEAR(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'KNGMCS001-CLEAR',
      data: {},
    );
    MICROSCOPEKNGMCS001_CONTEXT.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
    emit('');
  }

  Future<void> _TRICKER_KNGMCS001RESETVALUE(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'KNGMCS001-RESETVALUE',
      data: {},
    );
    MICROSCOPEKNGMCS001_CONTEXT.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
    emit('');
  }

  Future<void> _TRICKER_KNGMCS001SETZERO(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'KNGMCS001-SETZERO',
      data: {},
    );
    emit('');
  }

  //
  Future<void> _TRICKER_KNGMCS001getPR(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      serverR + 'getPR',
      data: {
        "MC": KNGMCS001var.selectINS,
      },
    );
    String output = '';
    if (response.statusCode == 200) {
      var databuff = response.data;
      KNGMCS001var.base64pic01data =
          databuff['DATA1'] != null ? databuff['DATA1'].toString() : "";
      KNGMCS001var.base64pic02data =
          databuff['DATA2'] != null ? databuff['DATA2'].toString() : "";
      KNGMCS001var.base64pic03data =
          databuff['DATA3'] != null ? databuff['DATA3'].toString() : "";
      KNGMCS001var.base64pic04data =
          databuff['DATA4'] != null ? databuff['DATA4'].toString() : "";
    } else {
      //
    }
    MICROSCOPEKNGMCS001_CONTEXT.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
    emit(output);
  }

  Future<void> _TRICKER_KNGMCS001getCP(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      serverR + 'getCP',
      data: {
        "MC": KNGMCS001var.selectINS,
      },
    );
    if (response.statusCode == 200) {
      var databuff = response.data;
      KNGMCS001var.base64pic01data =
          databuff['DATA1'] != null ? databuff['DATA1'].toString() : "";
      KNGMCS001var.base64pic02data =
          databuff['DATA2'] != null ? databuff['DATA2'].toString() : "";
      KNGMCS001var.base64pic03data =
          databuff['DATA3'] != null ? databuff['DATA3'].toString() : "";
      KNGMCS001var.base64pic04data =
          databuff['DATA4'] != null ? databuff['DATA4'].toString() : "";
    } else {
      //
    }
    MICROSCOPEKNGMCS001_CONTEXT.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
    emit('');
  }

  //-------------------------------- FINISH
  //TRICKER_KNGMCS001FINISH

  Future<void> _TRICKER_KNGMCS001FINISH(
      String toAdd, Emitter<String> emit) async {
    final response = await Dio().post(
      server + 'KNGMCS001-FINISH-IMG',
      data: {
        "IMG01": KNGMCS001var.base64pic01,
        "IMG02": KNGMCS001var.base64pic02,
        "IMG03": KNGMCS001var.base64pic03,
        "IMG04": KNGMCS001var.base64pic04,
        "IMG05": KNGMCS001var.base64pic05,
        "IMG06": KNGMCS001var.base64pic06,
        "IMG07": KNGMCS001var.base64pic07,
        "IMG08": KNGMCS001var.base64pic08,
        "IMG09": KNGMCS001var.base64pic09,
        "IMG10": KNGMCS001var.base64pic10,
        "IMG11": KNGMCS001var.base64pic11,
        "IMG12": KNGMCS001var.base64pic12,
        "IMG01data": KNGMCS001var.base64pic01data,
        "IMG02data": KNGMCS001var.base64pic02data,
        "IMG03data": KNGMCS001var.base64pic03data,
        "IMG04data": KNGMCS001var.base64pic04data,
        "IMG05data": KNGMCS001var.base64pic05data,
        "IMG06data": KNGMCS001var.base64pic06data,
        "IMG07data": KNGMCS001var.base64pic07data,
        "IMG08data": KNGMCS001var.base64pic08data,
        "IMG09data": KNGMCS001var.base64pic09data,
        "IMG10data": KNGMCS001var.base64pic10data,
        "IMG11data": KNGMCS001var.base64pic11data,
        "IMG12data": KNGMCS001var.base64pic12data,
      },
    );
    if (response.statusCode == 200) {
      MICROSCOPEKNGMCS001_CONTEXT.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
    }

    emit('OK');
  }

  //-------------------------------- no request

  Future<void> _TRICKER_FLUSH(String toAdd, Emitter<String> emit) async {
    MICROSCOPEKNGMCS001_CONTEXT.read<KNGMCS001_Bloc>().add(KNGMCS001_READ());
    emit('');
  }
}
